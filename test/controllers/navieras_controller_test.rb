require 'test_helper'

class NavierasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @naviera = navieras(:one)
  end

  test "should get index" do
    get navieras_url
    assert_response :success
  end

  test "should get new" do
    get new_naviera_url
    assert_response :success
  end

  test "should create naviera" do
    assert_difference('Naviera.count') do
      post navieras_url, params: { naviera: { Correo: @naviera.Correo, Direccion: @naviera.Direccion, Id: @naviera.Id, Id_Empresa: @naviera.Id_Empresa, Nombre: @naviera.Nombre, Telefono: @naviera.Telefono } }
    end

    assert_redirected_to naviera_url(Naviera.last)
  end

  test "should show naviera" do
    get naviera_url(@naviera)
    assert_response :success
  end

  test "should get edit" do
    get edit_naviera_url(@naviera)
    assert_response :success
  end

  test "should update naviera" do
    patch naviera_url(@naviera), params: { naviera: { Correo: @naviera.Correo, Direccion: @naviera.Direccion, Id: @naviera.Id, Id_Empresa: @naviera.Id_Empresa, Nombre: @naviera.Nombre, Telefono: @naviera.Telefono } }
    assert_redirected_to naviera_url(@naviera)
  end

  test "should destroy naviera" do
    assert_difference('Naviera.count', -1) do
      delete naviera_url(@naviera)
    end

    assert_redirected_to navieras_url
  end
end
