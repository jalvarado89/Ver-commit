class RoutesController < ApplicationController
  layout :another_layout
  before_action :set_route, :require_user, only: [:show, :edit, :update, :destroy]

  # GET /routes
  # GET /routes.json
  def index
    if current_user
      if current_user.tipo == "Administrador"
        @routes = Route.all
      else
        redirect_to "/"
      end
    end
  end

  # GET /routes/1
  # GET /routes/1.json
  def show
  end

  # GET /routes/new
  def new
    if current_user
      if current_user.tipo == "Administrador"
        @route = Route.new
      else
        redirect_to "/"
      end
    end    
  end

  # GET /routes/1/edit
  def edit
  end

  # POST /routes
  # POST /routes.json
  def create
    @route = Route.new(route_params)

    respond_to do |format|
      if @route.save
        format.html { redirect_to @route, notice: 'Exito. Datos Guardados.' }
        format.json { render :show, status: :created, location: @route }
      else
        format.html { render :new }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /routes/1
  # PATCH/PUT /routes/1.json
  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to @route, notice: 'Los Datos fueron Actualizados.' }
        format.json { render :show, status: :ok, location: @route }
      else
        format.html { render :edit }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routes/1
  # DELETE /routes/1.json
  def destroy
    @route.destroy
    respond_to do |format|
      format.html { redirect_to routes_url, notice: 'Registro Eliminado Exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_params
      params.require(:route).permit(:Nombre, :Precio_Empresa_2Ejes, :Precio_Empresa_3Ejes, :Precio_Chofer, :companies_id)
    end
end
