require "test_helper"

class WeatherControllerTest < ActionDispatch::IntegrationTest
  test "should get current" do
    get weather_current_url
    assert_response :success
  end
end
