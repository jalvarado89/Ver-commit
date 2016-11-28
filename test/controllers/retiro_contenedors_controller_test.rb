require 'test_helper'

class RetiroContenedorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retiro_contenedor = retiro_contenedors(:one)
  end

  test "should get index" do
    get retiro_contenedors_url
    assert_response :success
  end

  test "should get new" do
    get new_retiro_contenedor_url
    assert_response :success
  end

  test "should create retiro_contenedor" do
    assert_difference('RetiroContenedor.count') do
      post retiro_contenedors_url, params: { retiro_contenedor: {  } }
    end

    assert_redirected_to retiro_contenedor_url(RetiroContenedor.last)
  end

  test "should show retiro_contenedor" do
    get retiro_contenedor_url(@retiro_contenedor)
    assert_response :success
  end

  test "should get edit" do
    get edit_retiro_contenedor_url(@retiro_contenedor)
    assert_response :success
  end

  test "should update retiro_contenedor" do
    patch retiro_contenedor_url(@retiro_contenedor), params: { retiro_contenedor: {  } }
    assert_redirected_to retiro_contenedor_url(@retiro_contenedor)
  end

  test "should destroy retiro_contenedor" do
    assert_difference('RetiroContenedor.count', -1) do
      delete retiro_contenedor_url(@retiro_contenedor)
    end

    assert_redirected_to retiro_contenedors_url
  end
end
