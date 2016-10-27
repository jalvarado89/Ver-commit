class ClienteNavierasController < ApplicationController
  layout 'layout'
  before_action :set_cliente_naviera, only: [:show, :edit, :update, :destroy]

  # GET /cliente_navieras
  # GET /cliente_navieras.json
  def index
    @cliente_navieras = ClienteNaviera.all
  end

  # GET /cliente_navieras/1
  # GET /cliente_navieras/1.json
  def show
    @cliente_naviera = ClienteNaviera.find(params[:Id])
  end

  # GET /cliente_navieras/new
  def new
    @cliente_naviera = ClienteNaviera.new
  end

  # GET /cliente_navieras/1/edit
  def edit
    @cliente_naviera = ClienteNaviera.find params[:Id]
  end

  # POST /cliente_navieras
  # POST /cliente_navieras.json
  def create
    @cliente_naviera = ClienteNaviera.new(cliente_naviera_params)

    respond_to do |format|
      if @cliente_naviera.save
        format.html { redirect_to @cliente_naviera, notice: 'Cliente naviera was successfully created.' }
        format.json { render :show, status: :created, location: @cliente_naviera }
      else
        format.html { render :new }
        format.json { render json: @cliente_naviera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_navieras/1
  # PATCH/PUT /cliente_navieras/1.json
  def update
    respond_to do |format|
      if @cliente_naviera.update(cliente_naviera_params)
        format.html { redirect_to @cliente_naviera, notice: 'Cliente naviera was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente_naviera }
      else
        format.html { render :edit }
        format.json { render json: @cliente_naviera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_navieras/1
  # DELETE /cliente_navieras/1.json
  def destroy
    @cliente_naviera.destroy
    respond_to do |format|
      format.html { redirect_to cliente_navieras_url, notice: 'Cliente naviera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_naviera
      @cliente_naviera = ClienteNaviera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_naviera_params
      params.require(:cliente_naviera).permit(:Nombre, :Telefono, :Correo, :Id_Naviera)
    end
end
