class NumContenedorsController < ApplicationController
  layout :another_layout
  before_action :set_num_contenedor, :require_user, only: [:show, :edit, :update, :destroy]

  # GET /num_contenedors
  # GET /num_contenedors.json
  def index
    @num_contenedors = NumContenedor.all

  end

  # GET /num_contenedors/new
  def new      
    @num_contenedor = NumContenedor.new
  end

  # POST /num_contenedors
  # POST /num_contenedors.json
  def create
    @num_contenedor = NumContenedor.new(num_contenedor_params)
    @num_contenedor.Activo = true    
    
      if @num_contenedor.save        
        redirect_to "/asignacion/".to_s + @num_contenedor.asignations_id.to_s, notice: 'Exito. Datos Guardados'
      else        
        redirect_to "/asignacion/".to_s + @num_contenedor.asignations_id.to_s, notice: 'Error. Datos no fueron Guardados'
      end
  end

  # DELETE /num_contenedors/1
  # DELETE /num_contenedors/1.json
  def destroy
    @num_contenedor.destroy
    redirect_to "/asignacion/".to_s + @num_contenedor.asignations_id.to_s
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_num_contenedor
      @num_contenedor = NumContenedor.find(params[:id])      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def num_contenedor_params
      params.require(:num_contenedor).permit(:Sigla, :Numero, :Marchamo, :Temperatura, :Cant_Ejes, :asignations_id)
    end
end
