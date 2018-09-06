require 'test_helper'

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get activities_url, as: :json
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      post activities_url, params: { activity: { description_activity: @activity.description_activity, fecha_activity: @activity.fecha_activity, lugar_activity: @activity.lugar_activity, name_activity: @activity.name_activity, status_activity_id: @activity.status_activity_id, type_activity_id: @activity.type_activity_id } }, as: :json
    end

    assert_response 201
  end

  test "should show activity" do
    get activity_url(@activity), as: :json
    assert_response :success
  end

  test "should update activity" do
    patch activity_url(@activity), params: { activity: { description_activity: @activity.description_activity, fecha_activity: @activity.fecha_activity, lugar_activity: @activity.lugar_activity, name_activity: @activity.name_activity, status_activity_id: @activity.status_activity_id, type_activity_id: @activity.type_activity_id } }, as: :json
    assert_response 200
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete activity_url(@activity), as: :json
    end

    assert_response 204
  end
end
