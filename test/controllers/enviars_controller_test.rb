require 'test_helper'

class EnviarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enviar = enviars(:one)
  end

  test "should get index" do
    get enviars_url
    assert_response :success
  end

  test "should get new" do
    get new_enviar_url
    assert_response :success
  end

  test "should create enviar" do
    assert_difference('Enviar.count') do
      post enviars_url, params: { enviar: { carrera: @enviar.carrera, destinatario: @enviar.destinatario, estado: @enviar.estado, numero: @enviar.numero, referencia: @enviar.referencia, remitente: @enviar.remitente, username: @enviar.username } }
    end

    assert_redirected_to enviar_url(Enviar.last)
  end

  test "should show enviar" do
    get enviar_url(@enviar)
    assert_response :success
  end

  test "should get edit" do
    get edit_enviar_url(@enviar)
    assert_response :success
  end

  test "should update enviar" do
    patch enviar_url(@enviar), params: { enviar: { carrera: @enviar.carrera, destinatario: @enviar.destinatario, estado: @enviar.estado, numero: @enviar.numero, referencia: @enviar.referencia, remitente: @enviar.remitente, username: @enviar.username } }
    assert_redirected_to enviar_url(@enviar)
  end

  test "should destroy enviar" do
    assert_difference('Enviar.count', -1) do
      delete enviar_url(@enviar)
    end

    assert_redirected_to enviars_url
  end
end
