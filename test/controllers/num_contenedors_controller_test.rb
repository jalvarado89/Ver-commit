require 'test_helper'

class NumContenedorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @num_contenedor = num_contenedors(:one)
  end

  test "should get index" do
    get num_contenedors_url
    assert_response :success
  end

  test "should get new" do
    get new_num_contenedor_url
    assert_response :success
  end

  test "should create num_contenedor" do
    assert_difference('NumContenedor.count') do
      post num_contenedors_url, params: { num_contenedor: { Activo: @num_contenedor.Activo, Cant_Ejes: @num_contenedor.Cant_Ejes, Cod_Asignacion: @num_contenedor.Cod_Asignacion, Id: @num_contenedor.Id, Marchamo: @num_contenedor.Marchamo, Numero: @num_contenedor.Numero, Sigla: @num_contenedor.Sigla, Temperatura: @num_contenedor.Temperatura } }
    end

    assert_redirected_to num_contenedor_url(NumContenedor.last)
  end

  test "should show num_contenedor" do
    get num_contenedor_url(@num_contenedor)
    assert_response :success
  end

  test "should get edit" do
    get edit_num_contenedor_url(@num_contenedor)
    assert_response :success
  end

  test "should update num_contenedor" do
    patch num_contenedor_url(@num_contenedor), params: { num_contenedor: { Activo: @num_contenedor.Activo, Cant_Ejes: @num_contenedor.Cant_Ejes, Cod_Asignacion: @num_contenedor.Cod_Asignacion, Id: @num_contenedor.Id, Marchamo: @num_contenedor.Marchamo, Numero: @num_contenedor.Numero, Sigla: @num_contenedor.Sigla, Temperatura: @num_contenedor.Temperatura } }
    assert_redirected_to num_contenedor_url(@num_contenedor)
  end

  test "should destroy num_contenedor" do
    assert_difference('NumContenedor.count', -1) do
      delete num_contenedor_url(@num_contenedor)
    end

    assert_redirected_to num_contenedors_url
  end
end
