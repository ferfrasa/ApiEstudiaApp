require 'test_helper'

class PruebasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prueba = pruebas(:one)
  end

  test "should get index" do
    get pruebas_url, as: :json
    assert_response :success
  end

  test "should create prueba" do
    assert_difference('Prueba.count') do
      post pruebas_url, params: { prueba: { nombre: @prueba.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show prueba" do
    get prueba_url(@prueba), as: :json
    assert_response :success
  end

  test "should update prueba" do
    patch prueba_url(@prueba), params: { prueba: { nombre: @prueba.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy prueba" do
    assert_difference('Prueba.count', -1) do
      delete prueba_url(@prueba), as: :json
    end

    assert_response 204
  end
end
