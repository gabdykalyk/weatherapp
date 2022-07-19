require "test_helper"

class WeatherControllerTest < ActionDispatch::IntegrationTest
  test "should get current" do
    get root_path
    assert_response :success
  end

  test "should get historical" do
    get weather_historical_path
    assert_response :success
  end

  test "should get max" do
    get weather_max_path
    assert_response :success
  end

  test "should get min" do
    get weather_min_path
    assert_response :success
  end

  test "should get avg" do
    get weather_avg_path
    assert_response :success
  end

  test "should get by_time" do
    get weather_by_time_path
    assert_response :success
  end
end
