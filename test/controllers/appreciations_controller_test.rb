require 'test_helper'

class AppreciationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appreciation = appreciations(:one)
  end

  test "should get index" do
    get appreciations_url, as: :json
    assert_response :success
  end

  test "should create appreciation" do
    assert_difference('Appreciation.count') do
      post appreciations_url, params: { appreciation: { calificacion: @appreciation.calificacion, comentario: @appreciation.comentario, has_user_project_id: @appreciation.has_user_project_id, idActividad: @appreciation.idActividad } }, as: :json
    end

    assert_response 201
  end

  test "should show appreciation" do
    get appreciation_url(@appreciation), as: :json
    assert_response :success
  end

  test "should update appreciation" do
    patch appreciation_url(@appreciation), params: { appreciation: { calificacion: @appreciation.calificacion, comentario: @appreciation.comentario, has_user_project_id: @appreciation.has_user_project_id, idActividad: @appreciation.idActividad } }, as: :json
    assert_response 200
  end

  test "should destroy appreciation" do
    assert_difference('Appreciation.count', -1) do
      delete appreciation_url(@appreciation), as: :json
    end

    assert_response 204
  end
end
