require 'test_helper'

class DPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @d_post = d_posts(:one)
  end

  test "should get index" do
    get d_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_d_post_url
    assert_response :success
  end

  test "should create d_post" do
    assert_difference('DPost.count') do
      post d_posts_url, params: { d_post: { content: @d_post.content, title: @d_post.title } }
    end

    assert_redirected_to d_post_url(DPost.last)
  end

  test "should show d_post" do
    get d_post_url(@d_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_d_post_url(@d_post)
    assert_response :success
  end

  test "should update d_post" do
    patch d_post_url(@d_post), params: { d_post: { content: @d_post.content, title: @d_post.title } }
    assert_redirected_to d_post_url(@d_post)
  end

  test "should destroy d_post" do
    assert_difference('DPost.count', -1) do
      delete d_post_url(@d_post)
    end

    assert_redirected_to d_posts_url
  end
end
