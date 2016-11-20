class AsignationsController < ApplicationController
  layout 'layout'
  before_action :set_asignation, only: [:show, :edit, :update, :destroy]

  # GET /asignations
  # GET /asignations.json
  def index
    @asignations = Asignation.where(Activo: true)
  end

  # GET /asignations/1
  # GET /asignations/1.json
  def show
  end

  # GET /asignations/new
  def new
    @asignation = Asignation.new
  end

  # GET /asignations/1/edit
  def edit
  end

  # POST /asignations
  # POST /asignations.json
  def create
    @asignation = Asignation.new(asignation_params)
    @asignation.Activo = true;
    

    respond_to do |format|
      if @asignation.save
        format.html { redirect_to @asignation, notice: 'Asignation was successfully created.' }
        format.json { render :show, status: :created, location: @asignation }
      else
        format.html { render :new }
        format.json { render json: @asignation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignations/1
  # PATCH/PUT /asignations/1.json
  def update
    respond_to do |format|
      if @asignation.update(asignation_params)
        format.html { redirect_to @asignation, notice: 'Asignation was successfully updated.' }
        format.json { render :show, status: :ok, location: @asignation }
      else
        format.html { render :edit }
        format.json { render json: @asignation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignations/1
  # DELETE /asignations/1.json
  def destroy
    @asignation.destroy
    respond_to do |format|
      format.html { redirect_to asignations_url, notice: 'Asignation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignation
      @asignation = Asignation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignation_params
      params.require(:asignation).permit(:Num_Semana, :Fecha_Colocacion, :Hora_Colocacion, :Activo, :companies_id, :predios_id, :predios_id2, :plantum_id, :navieras_id, :cliente_navieras_id, :routes_id)
    end
end
