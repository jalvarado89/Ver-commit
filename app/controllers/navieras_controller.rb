class NavierasController < ApplicationController
  layout 'layout'
  before_action :set_naviera, only: [:show, :edit, :update, :destroy]

  # GET /navieras
  # GET /navieras.json
  def index
    @navieras = Naviera.all    
  end

  # GET /navieras/1
  # GET /navieras/1.json
  def show
  end

  # GET /navieras/new
  def new    
    @naviera = Naviera.new
  end

  # GET /navieras/1/edit
  def edit
  end

  # POST /navieras
  # POST /navieras.json
  def create    
    @naviera = Naviera.new(naviera_params)
    
    respond_to do |format|
      if @naviera.save
        format.html { redirect_to @naviera, notice: 'Naviera was successfully created.' }
        format.json { render :show, status: :created, location: @naviera }
      else
        format.html { render :new }
        format.json { render json: @naviera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /navieras/1
  # PATCH/PUT /navieras/1.json
  def update
    respond_to do |format|
      if @naviera.update(naviera_params)
        format.html { redirect_to @naviera, notice: 'Naviera was successfully updated.' }
        format.json { render :show, status: :ok, location: @naviera }
      else
        format.html { render :edit }
        format.json { render json: @naviera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /navieras/1
  # DELETE /navieras/1.json
  def destroy
    @naviera.destroy
    respond_to do |format|
      format.html { redirect_to navieras_url, notice: 'Naviera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_naviera
      @naviera = Naviera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def naviera_params
      params.require(:naviera).permit(:Nombre, :Telefono, :Correo, :Direccion, :companies_id)      
    end
end
