class RetirosController < ApplicationController
  layout :another_layout
  before_action :require_user, only: [:show, :edit, :update, :destroy, :ver, :retiro, :retirar, :new]

  # GET /retiros
  # GET /retiros.json
  def index
    @retiros = Retiro.all
  end

  #Muestra Asignaciones Activas
  def ver
    @asignations = Asignation.where(Activo: true)    
  end

  #Muestra una Asignacion y sus respectivos N. Contenedor
  # GET /retiro/1
  def retiro
    @asignations = Asignation.where(Activo: true, id: params[:id])    
    @contenedors = NumContenedor.where(asignations_id: params[:id])
  end

  #Crea el Retiro y el detalle de los N. Retirados
  # GET /retirar/1
  def retirar
    @contenedors = NumContenedor.where(id: params[:id])
    @retiro = Retiro.new
  end

  # GET /retiros/new
  def new
    @retiro = Retiro.new
  end

  # GET /retiros/1/edit
  def edit
  end

  # POST /retiros
  # POST /retiros.json
  def create
    @retiro = Retiro.new(retiro_params)
    
      if @retiro.save
        @num_contenedor = NumContenedor.find(@retiro.num_contenedors_id)        
        @num_contenedor.update_attribute(:Activo, false)      
        redirect_to "/retiro/".to_s + @retiro.asignations_id.to_s, notice: 'Exito. Retiro fue creado.'
      else        
        redirect_to "/retiro/".to_s + @retiro.asignations_id.to_s, notice: 'Error. Datos no guardados.'
      end
  end

  # PATCH/PUT /retiros/1
  # PATCH/PUT /retiros/1.json
  def update
    respond_to do |format|
      if @retiro.update(retiro_params)
        format.html { redirect_to @retiro, notice: 'Retiro was successfully updated.' }
        format.json { render :show, status: :ok, location: @retiro }
      else
        format.html { render :edit }
        format.json { render json: @retiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retiros/1
  # DELETE /retiros/1.json
  def destroy
    @retiro.destroy
    respond_to do |format|
      format.html { redirect_to retiros_url, notice: 'Retiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retiro
      @retiro = Retiro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def retiro_params
      params.require(:retiro).permit(:fecha, :num_contenedors_id, :drivers_id, :trucks_id, :implements_id, :asignations_id)
    end
end
