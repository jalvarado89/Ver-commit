require 'test_helper'

class AsignationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asignation = asignations(:one)
  end

  test "should get index" do
    get asignations_url
    assert_response :success
  end

  test "should get new" do
    get new_asignation_url
    assert_response :success
  end

  test "should create asignation" do
    assert_difference('Asignation.count') do
      post asignations_url, params: { asignation: { Activo: @asignation.Activo, Cod_Asignacion: @asignation.Cod_Asignacion, Cod_Cliente: @asignation.Cod_Cliente, Cod_Empresa: @asignation.Cod_Empresa, Cod_Naviera: @asignation.Cod_Naviera, Cod_Planta: @asignation.Cod_Planta, Cod_Predio_Entrega: @asignation.Cod_Predio_Entrega, Cod_Predio_Retiro: @asignation.Cod_Predio_Retiro, Cod_Ruta: @asignation.Cod_Ruta, Fecha_Colocacion: @asignation.Fecha_Colocacion, Hora_Colocacion: @asignation.Hora_Colocacion, Num_Semana: @asignation.Num_Semana } }
    end

    assert_redirected_to asignation_url(Asignation.last)
  end

  test "should show asignation" do
    get asignation_url(@asignation)
    assert_response :success
  end

  test "should get edit" do
    get edit_asignation_url(@asignation)
    assert_response :success
  end

  test "should update asignation" do
    patch asignation_url(@asignation), params: { asignation: { Activo: @asignation.Activo, Cod_Asignacion: @asignation.Cod_Asignacion, Cod_Cliente: @asignation.Cod_Cliente, Cod_Empresa: @asignation.Cod_Empresa, Cod_Naviera: @asignation.Cod_Naviera, Cod_Planta: @asignation.Cod_Planta, Cod_Predio_Entrega: @asignation.Cod_Predio_Entrega, Cod_Predio_Retiro: @asignation.Cod_Predio_Retiro, Cod_Ruta: @asignation.Cod_Ruta, Fecha_Colocacion: @asignation.Fecha_Colocacion, Hora_Colocacion: @asignation.Hora_Colocacion, Num_Semana: @asignation.Num_Semana } }
    assert_redirected_to asignation_url(@asignation)
  end

  test "should destroy asignation" do
    assert_difference('Asignation.count', -1) do
      delete asignation_url(@asignation)
    end

    assert_redirected_to asignations_url
  end
end
