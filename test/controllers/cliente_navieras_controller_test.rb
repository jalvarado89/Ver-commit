require 'test_helper'

class ClienteNavierasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente_naviera = cliente_navieras(:one)
  end

  test "should get index" do
    get cliente_navieras_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_naviera_url
    assert_response :success
  end

  test "should create cliente_naviera" do
    assert_difference('ClienteNaviera.count') do
      post cliente_navieras_url, params: { cliente_naviera: { Correo: @cliente_naviera.Correo, Id: @cliente_naviera.Id, Id_Naviera: @cliente_naviera.Id_Naviera, Nombre: @cliente_naviera.Nombre, Telefono: @cliente_naviera.Telefono } }
    end

    assert_redirected_to cliente_naviera_url(ClienteNaviera.last)
  end

  test "should show cliente_naviera" do
    get cliente_naviera_url(@cliente_naviera)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_naviera_url(@cliente_naviera)
    assert_response :success
  end

  test "should update cliente_naviera" do
    patch cliente_naviera_url(@cliente_naviera), params: { cliente_naviera: { Correo: @cliente_naviera.Correo, Id: @cliente_naviera.Id, Id_Naviera: @cliente_naviera.Id_Naviera, Nombre: @cliente_naviera.Nombre, Telefono: @cliente_naviera.Telefono } }
    assert_redirected_to cliente_naviera_url(@cliente_naviera)
  end

  test "should destroy cliente_naviera" do
    assert_difference('ClienteNaviera.count', -1) do
      delete cliente_naviera_url(@cliente_naviera)
    end

    assert_redirected_to cliente_navieras_url
  end
end
