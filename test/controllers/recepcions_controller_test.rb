require 'test_helper'

class RecepcionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recepcion = recepcions(:one)
  end

  test "should get index" do
    get recepcions_url
    assert_response :success
  end

  test "should get new" do
    get new_recepcion_url
    assert_response :success
  end

  test "should create recepcion" do
    assert_difference('Recepcion.count') do
      post recepcions_url, params: { recepcion: { carrera: @recepcion.carrera, destinatario: @recepcion.destinatario, estado: @recepcion.estado, numero: @recepcion.numero, referencia: @recepcion.referencia, remitente: @recepcion.remitente, username: @recepcion.username } }
    end

    assert_redirected_to recepcion_url(Recepcion.last)
  end

  test "should show recepcion" do
    get recepcion_url(@recepcion)
    assert_response :success
  end

  test "should get edit" do
    get edit_recepcion_url(@recepcion)
    assert_response :success
  end

  test "should update recepcion" do
    patch recepcion_url(@recepcion), params: { recepcion: { carrera: @recepcion.carrera, destinatario: @recepcion.destinatario, estado: @recepcion.estado, numero: @recepcion.numero, referencia: @recepcion.referencia, remitente: @recepcion.remitente, username: @recepcion.username } }
    assert_redirected_to recepcion_url(@recepcion)
  end

  test "should destroy recepcion" do
    assert_difference('Recepcion.count', -1) do
      delete recepcion_url(@recepcion)
    end

    assert_redirected_to recepcions_url
  end
end
