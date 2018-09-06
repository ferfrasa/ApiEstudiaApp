require 'test_helper'

class TagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag = tags(:one)
  end

  test "should get index" do
    get tags_url, as: :json
    assert_response :success
  end

  test "should create tag" do
    assert_difference('Tag.count') do
      post tags_url, params: { tag: { color_tag: @tag.color_tag, name_tag: @tag.name_tag } }, as: :json
    end

    assert_response 201
  end

  test "should show tag" do
    get tag_url(@tag), as: :json
    assert_response :success
  end

  test "should update tag" do
    patch tag_url(@tag), params: { tag: { color_tag: @tag.color_tag, name_tag: @tag.name_tag } }, as: :json
    assert_response 200
  end

  test "should destroy tag" do
    assert_difference('Tag.count', -1) do
      delete tag_url(@tag), as: :json
    end

    assert_response 204
  end
end
