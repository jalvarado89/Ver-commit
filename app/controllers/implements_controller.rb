class ImplementsController < ApplicationController
  layout :another_layout
  before_action :set_implement, :require_user, only: [:show, :edit, :update, :destroy]

  # GET /implements
  # GET /implements.json
  def index
    if current_user
      if current_user.tipo == "Administrador"
        @implements = Implement.all
      else
        redirect_to "/"
      end
    end    
  end

  # GET /implements/1
  # GET /implements/1.json
  def show
  end

  # GET /implements/new
  def new
    if current_user
      if current_user.tipo == "Administrador"
        @implement = Implement.new
      else
        redirect_to "/"
      end
    end    
  end

  # GET /implements/1/edit
  def edit
  end

  # POST /implements
  # POST /implements.json
  def create
    @implement = Implement.new(implement_params)

    respond_to do |format|
      if @implement.save
        format.html { redirect_to @implement, notice: 'Exito. Datos Guardados.' }
        format.json { render :show, status: :created, location: @implement }
      else
        format.html { render :new }
        format.json { render json: @implement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /implements/1
  # PATCH/PUT /implements/1.json
  def update
    respond_to do |format|
      if @implement.update(implement_params)
        format.html { redirect_to @implement, notice: 'Los Datos fueron Actualizados.' }
        format.json { render :show, status: :ok, location: @implement }
      else
        format.html { render :edit }
        format.json { render json: @implement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /implements/1
  # DELETE /implements/1.json
  def destroy
    @implement.destroy
    respond_to do |format|
      format.html { redirect_to implements_url, notice: 'Registro Eliminado Exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_implement
      @implement = Implement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def implement_params
      params.require(:implement).permit(:Num_Chasis, :Num_Placa, :Empresa, :trucks_id)
    end
end
