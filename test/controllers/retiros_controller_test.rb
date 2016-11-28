require 'test_helper'

class RetirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retiro = retiros(:one)
  end

  test "should get index" do
    get retiros_url
    assert_response :success
  end

  test "should get new" do
    get new_retiro_url
    assert_response :success
  end

  test "should create retiro" do
    assert_difference('Retiro.count') do
      post retiros_url, params: { retiro: { fecha: @retiro.fecha } }
    end

    assert_redirected_to retiro_url(Retiro.last)
  end

  test "should show retiro" do
    get retiro_url(@retiro)
    assert_response :success
  end

  test "should get edit" do
    get edit_retiro_url(@retiro)
    assert_response :success
  end

  test "should update retiro" do
    patch retiro_url(@retiro), params: { retiro: { fecha: @retiro.fecha } }
    assert_redirected_to retiro_url(@retiro)
  end

  test "should destroy retiro" do
    assert_difference('Retiro.count', -1) do
      delete retiro_url(@retiro)
    end

    assert_redirected_to retiros_url
  end
end
