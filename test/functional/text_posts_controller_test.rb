require 'test_helper'

class TextPostsControllerTest < ActionController::TestCase
  setup do
    @text_post = text_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_post" do
    assert_difference('TextPost.count') do
      post :create, text_post: { body: @text_post.body, title: @text_post.title }
    end

    assert_redirected_to text_post_path(assigns(:text_post))
  end

  test "should show text_post" do
    get :show, id: @text_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @text_post
    assert_response :success
  end

  test "should update text_post" do
    put :update, id: @text_post, text_post: { body: @text_post.body, title: @text_post.title }
    assert_redirected_to text_post_path(assigns(:text_post))
  end

  test "should destroy text_post" do
    assert_difference('TextPost.count', -1) do
      delete :destroy, id: @text_post
    end

    assert_redirected_to text_posts_path
  end
end
