require 'test_helper'

class StatusActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_activity = status_activities(:one)
  end

  test "should get index" do
    get status_activities_url, as: :json
    assert_response :success
  end

  test "should create status_activity" do
    assert_difference('StatusActivity.count') do
      post status_activities_url, params: { status_activity: { name_status_activity: @status_activity.name_status_activity } }, as: :json
    end

    assert_response 201
  end

  test "should show status_activity" do
    get status_activity_url(@status_activity), as: :json
    assert_response :success
  end

  test "should update status_activity" do
    patch status_activity_url(@status_activity), params: { status_activity: { name_status_activity: @status_activity.name_status_activity } }, as: :json
    assert_response 200
  end

  test "should destroy status_activity" do
    assert_difference('StatusActivity.count', -1) do
      delete status_activity_url(@status_activity), as: :json
    end

    assert_response 204
  end
end
