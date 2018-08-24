require 'test_helper'

class StylejgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stylejg = stylejgs(:one)
  end

  test "should get index" do
    get stylejgs_url
    assert_response :success
  end

  test "should get new" do
    get new_stylejg_url
    assert_response :success
  end

  test "should create stylejg" do
    assert_difference('Stylejg.count') do
      post stylejgs_url, params: { stylejg: { context: @stylejg.context, title: @stylejg.title } }
    end

    assert_redirected_to stylejg_url(Stylejg.last)
  end

  test "should show stylejg" do
    get stylejg_url(@stylejg)
    assert_response :success
  end

  test "should get edit" do
    get edit_stylejg_url(@stylejg)
    assert_response :success
  end

  test "should update stylejg" do
    patch stylejg_url(@stylejg), params: { stylejg: { context: @stylejg.context, title: @stylejg.title } }
    assert_redirected_to stylejg_url(@stylejg)
  end

  test "should destroy stylejg" do
    assert_difference('Stylejg.count', -1) do
      delete stylejg_url(@stylejg)
    end

    assert_redirected_to stylejgs_url
  end
end
