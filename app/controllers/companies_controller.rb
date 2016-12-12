class CompaniesController < ApplicationController
  layout :another_layout
  before_action :set_company, :require_user, only: [:show, :edit, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
    if current_user
      if current_user.tipo == "Administrador"
        @companies = Company.all
      else
        redirect_to "/"
      end
    end    
  end

  def precio_rutas
    @precios = Company.select('"companies"."Nombre", "routes"."Nombre" as ruta, "routes"."Precio_Empresa_2Ejes", "routes"."Precio_Empresa_3Ejes"').joins('INNER JOIN "routes" ON "companies"."id" = "routes"."companies_id"')
  end

  def precio_chofer
    @precios = Company.select('"companies"."Nombre", "routes"."Nombre" as ruta, "routes"."Precio_Chofer"').joins('INNER JOIN "routes" ON "companies"."id" = "routes"."companies_id"')
  end

  def clientexpredio
    @predios = Company.select('"companies"."Nombre", "predios"."Nombre" as nombrepredio, "companies"."Telefono" as numero, "predios"."Telefono"').joins('INNER JOIN "predios" ON "companies"."id" = "predios"."companies_id"')
  end

  def empresas
    @empresas = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    if current_user
      if current_user.tipo == "Administrador"
        @company = Company.new
      else
        redirect_to "/"
      end
    end    
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Exito. Datos Guardados.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Los Datos fueron Actualizados.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Registro Eliminado Exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:Nombre, :Telefono, :Correo, :Direccion)
    end
end
