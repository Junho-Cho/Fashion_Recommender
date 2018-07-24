require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_home_url
    assert_response :success
  end

  test "should get judge" do
    get main_judge_url
    assert_response :success
  end

  test "should get doctor" do
    get main_doctor_url
    assert_response :success
  end

  test "should get market" do
    get main_market_url
    assert_response :success
  end

end
