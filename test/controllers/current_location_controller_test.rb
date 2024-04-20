require "test_helper"

class CurrentLocationControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get current_location_show_url
    assert_response :success
  end
end
