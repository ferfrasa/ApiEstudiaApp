require 'test_helper'

class TypeActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_activity = type_activities(:one)
  end

  test "should get index" do
    get type_activities_url, as: :json
    assert_response :success
  end

  test "should create type_activity" do
    assert_difference('TypeActivity.count') do
      post type_activities_url, params: { type_activity: { name_type_activity: @type_activity.name_type_activity } }, as: :json
    end

    assert_response 201
  end

  test "should show type_activity" do
    get type_activity_url(@type_activity), as: :json
    assert_response :success
  end

  test "should update type_activity" do
    patch type_activity_url(@type_activity), params: { type_activity: { name_type_activity: @type_activity.name_type_activity } }, as: :json
    assert_response 200
  end

  test "should destroy type_activity" do
    assert_difference('TypeActivity.count', -1) do
      delete type_activity_url(@type_activity), as: :json
    end

    assert_response 204
  end
end
