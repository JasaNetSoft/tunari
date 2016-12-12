require 'test_helper'

class ProveidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proveido = proveidos(:one)
  end

  test "should get index" do
    get proveidos_url
    assert_response :success
  end

  test "should get new" do
    get new_proveido_url
    assert_response :success
  end

  test "should create proveido" do
    assert_difference('Proveido.count') do
      post proveidos_url, params: { proveido: { nombre: @proveido.nombre } }
    end

    assert_redirected_to proveido_url(Proveido.last)
  end

  test "should show proveido" do
    get proveido_url(@proveido)
    assert_response :success
  end

  test "should get edit" do
    get edit_proveido_url(@proveido)
    assert_response :success
  end

  test "should update proveido" do
    patch proveido_url(@proveido), params: { proveido: { nombre: @proveido.nombre } }
    assert_redirected_to proveido_url(@proveido)
  end

  test "should destroy proveido" do
    assert_difference('Proveido.count', -1) do
      delete proveido_url(@proveido)
    end

    assert_redirected_to proveidos_url
  end
end
