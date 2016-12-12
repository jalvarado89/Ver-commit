class RetirosController < ApplicationController
  layout :another_layout
  before_action :require_user, only: [:show, :edit, :update, :destroy, :ver, :retiro, :retirar, :new]

  # GET /retiros
  # GET /retiros.json
  def index
    redirect_to "/"
  end

  #informe retiros efectuados por semana
  def ver_retiros
  end  
  
  def enviar_retiros
    @retiros = Retiro.select('"asignations"."id", "asignations"."Num_Semana", "asignations"."companies_id", "num_contenedors"."Sigla", "num_contenedors"."Numero", "retiros"."drivers_id", "retiros"."trucks_id", "retiros"."implements_id"').joins('LEFT OUTER JOIN "asignations" ON "asignations"."id" = "retiros"."asignations_id" LEFT OUTER JOIN "num_contenedors" ON "num_contenedors"."id" = "retiros"."num_contenedors_id"').where('asignations.Num_Semana': params[:Num_Semana])    
  end

  def enviar
  end

  def retiros_pendientes
    @retiros = Asignation.select('"asignations"."id", "asignations"."Num_Semana", "asignations"."fecha", "asignations"."hora", "asignations"."companies_id", "asignations"."navieras_id", "asignations"."cliente_navieras_id", "num_contenedors"."Sigla", "num_contenedors"."Numero"').joins('LEFT OUTER JOIN "num_contenedors" ON "num_contenedors"."asignations_id" = "asignations"."id"').where('asignations.Num_Semana': params[:Num_Semana], 'num_contenedors.Activo': true)
  end

  def mostrar_prefactura
  end

  def prefactura
    @prefacturas = Retiro.select('"asignations"."Num_Semana", "asignations"."companies_id", "retiros"."fecha", "routes"."Precio_Empresa_2Ejes", "routes"."Precio_Empresa_3Ejes", "num_contenedors"."Sigla", "num_contenedors"."Numero", "num_contenedors"."Cant_Ejes", "retiros"."drivers_id", "retiros"."trucks_id", "retiros"."implements_id"').joins('LEFT OUTER JOIN "asignations" ON "asignations"."id" = "retiros"."asignations_id" LEFT OUTER JOIN "routes" ON "asignations"."routes_id" = "routes"."id" LEFT OUTER JOIN "num_contenedors" ON "retiros"."num_contenedors_id" = "num_contenedors"."id"').where('asignations.Num_Semana': params[:Num_Semana], 'asignations.companies_id': params[:companies_id])
  end

  def mostrar_planilla    
  end

  def planilla
    @planillas = Retiro.select('"asignations"."Num_Semana", "asignations"."companies_id", "retiros"."fecha", "routes"."Precio_Chofer", "routes"."Nombre", "num_contenedors"."Sigla", "num_contenedors"."Numero", "retiros"."drivers_id", "retiros"."trucks_id", "retiros"."implements_id"').joins('LEFT OUTER JOIN "asignations" ON "asignations"."id" = "retiros"."asignations_id" LEFT OUTER JOIN "routes" ON "asignations"."routes_id" = "routes"."id" LEFT OUTER JOIN "num_contenedors" ON "retiros"."num_contenedors_id" = "num_contenedors"."id"').where('asignations.Num_Semana': params[:Num_Semana], 'retiros.drivers_id': params[:drivers_id])    
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
    redirect_to "/"
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

        @valor = NumContenedor.where(asignations_id: @retiro.asignations_id, Activo: true).count#.select('COUNT(*) AS total')
        if @valor >= 1          
          @asignation = Asignation.find(@retiro.asignations_id)
          @asignation.update_attribute(:Activo, false)
        end
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
