class NumContenedorsController < ApplicationController
  before_action :set_num_contenedor, only: [:show, :edit, :update, :destroy]

  # GET /num_contenedors
  # GET /num_contenedors.json
  def index
    @num_contenedors = NumContenedor.all
  end

  # GET /num_contenedors/1
  # GET /num_contenedors/1.json
  def show
  end

  # GET /num_contenedors/new
  def new
    @num_contenedor = NumContenedor.new
  end

  # GET /num_contenedors/1/edit
  def edit
  end

  # POST /num_contenedors
  # POST /num_contenedors.json
  def create
    @num_contenedor = NumContenedor.new(num_contenedor_params)

    respond_to do |format|
      if @num_contenedor.save
        format.html { redirect_to @num_contenedor, notice: 'Num contenedor was successfully created.' }
        format.json { render :show, status: :created, location: @num_contenedor }
      else
        format.html { render :new }
        format.json { render json: @num_contenedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /num_contenedors/1
  # PATCH/PUT /num_contenedors/1.json
  def update
    respond_to do |format|
      if @num_contenedor.update(num_contenedor_params)
        format.html { redirect_to @num_contenedor, notice: 'Num contenedor was successfully updated.' }
        format.json { render :show, status: :ok, location: @num_contenedor }
      else
        format.html { render :edit }
        format.json { render json: @num_contenedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /num_contenedors/1
  # DELETE /num_contenedors/1.json
  def destroy
    @num_contenedor.destroy
    respond_to do |format|
      format.html { redirect_to num_contenedors_url, notice: 'Num contenedor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_num_contenedor
      @num_contenedor = NumContenedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def num_contenedor_params
      params.require(:num_contenedor).permit(:Id, :Sigla, :Numero, :Marchamo, :Temperatura, :Cant_Ejes, :Activo, :Cod_Asignacion)
    end
end
