require 'test_helper'

class HasProjectTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @has_project_tag = has_project_tags(:one)
  end

  test "should get index" do
    get has_project_tags_url, as: :json
    assert_response :success
  end

  test "should create has_project_tag" do
    assert_difference('HasProjectTag.count') do
      post has_project_tags_url, params: { has_project_tag: { project_id: @has_project_tag.project_id, tag_id: @has_project_tag.tag_id } }, as: :json
    end

    assert_response 201
  end

  test "should show has_project_tag" do
    get has_project_tag_url(@has_project_tag), as: :json
    assert_response :success
  end

  test "should update has_project_tag" do
    patch has_project_tag_url(@has_project_tag), params: { has_project_tag: { project_id: @has_project_tag.project_id, tag_id: @has_project_tag.tag_id } }, as: :json
    assert_response 200
  end

  test "should destroy has_project_tag" do
    assert_difference('HasProjectTag.count', -1) do
      delete has_project_tag_url(@has_project_tag), as: :json
    end

    assert_response 204
  end
end
