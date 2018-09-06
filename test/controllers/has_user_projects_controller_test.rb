require 'test_helper'

class HasUserProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @has_user_project = has_user_projects(:one)
  end

  test "should get index" do
    get has_user_projects_url, as: :json
    assert_response :success
  end

  test "should create has_user_project" do
    assert_difference('HasUserProject.count') do
      post has_user_projects_url, params: { has_user_project: { project_id: @has_user_project.project_id, rol: @has_user_project.rol, user_id: @has_user_project.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show has_user_project" do
    get has_user_project_url(@has_user_project), as: :json
    assert_response :success
  end

  test "should update has_user_project" do
    patch has_user_project_url(@has_user_project), params: { has_user_project: { project_id: @has_user_project.project_id, rol: @has_user_project.rol, user_id: @has_user_project.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy has_user_project" do
    assert_difference('HasUserProject.count', -1) do
      delete has_user_project_url(@has_user_project), as: :json
    end

    assert_response 204
  end
end
