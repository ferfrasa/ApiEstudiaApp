require 'test_helper'

class SpectatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spectator = spectators(:one)
  end

  test "should get index" do
    get spectators_url, as: :json
    assert_response :success
  end

  test "should create spectator" do
    assert_difference('Spectator.count') do
      post spectators_url, params: { spectator: { name_spectator: @spectator.name_spectator } }, as: :json
    end

    assert_response 201
  end

  test "should show spectator" do
    get spectator_url(@spectator), as: :json
    assert_response :success
  end

  test "should update spectator" do
    patch spectator_url(@spectator), params: { spectator: { name_spectator: @spectator.name_spectator } }, as: :json
    assert_response 200
  end

  test "should destroy spectator" do
    assert_difference('Spectator.count', -1) do
      delete spectator_url(@spectator), as: :json
    end

    assert_response 204
  end
end
