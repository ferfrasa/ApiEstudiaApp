require 'test_helper'

class UserTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_type = user_types(:one)
  end

  test "should get index" do
    get user_types_url, as: :json
    assert_response :success
  end

  test "should create user_type" do
    assert_difference('UserType.count') do
      post user_types_url, params: { user_type: { name: @user_type.name } }, as: :json
    end

    assert_response 201
  end

  test "should show user_type" do
    get user_type_url(@user_type), as: :json
    assert_response :success
  end

  test "should update user_type" do
    patch user_type_url(@user_type), params: { user_type: { name: @user_type.name } }, as: :json
    assert_response 200
  end

  test "should destroy user_type" do
    assert_difference('UserType.count', -1) do
      delete user_type_url(@user_type), as: :json
    end

    assert_response 204
  end
end
