require 'test_helper'

class PrediosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @predio = predios(:one)
  end

  test "should get index" do
    get predios_url
    assert_response :success
  end

  test "should get new" do
    get new_predio_url
    assert_response :success
  end

  test "should create predio" do
    assert_difference('Predio.count') do
      post predios_url, params: { predio: { Correo: @predio.Correo, Direccion: @predio.Direccion, Id: @predio.Id, Id_Empresa: @predio.Id_Empresa, Nombre: @predio.Nombre, Telefono: @predio.Telefono } }
    end

    assert_redirected_to predio_url(Predio.last)
  end

  test "should show predio" do
    get predio_url(@predio)
    assert_response :success
  end

  test "should get edit" do
    get edit_predio_url(@predio)
    assert_response :success
  end

  test "should update predio" do
    patch predio_url(@predio), params: { predio: { Correo: @predio.Correo, Direccion: @predio.Direccion, Id: @predio.Id, Id_Empresa: @predio.Id_Empresa, Nombre: @predio.Nombre, Telefono: @predio.Telefono } }
    assert_redirected_to predio_url(@predio)
  end

  test "should destroy predio" do
    assert_difference('Predio.count', -1) do
      delete predio_url(@predio)
    end

    assert_redirected_to predios_url
  end
end
