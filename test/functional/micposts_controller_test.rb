require 'test_helper'

class MicpostsControllerTest < ActionController::TestCase
  setup do
    @micpost = micposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micpost" do
    assert_difference('Micpost.count') do
      post :create, micpost: { content: @micpost.content, user_id: @micpost.user_id }
    end

    assert_redirected_to micpost_path(assigns(:micpost))
  end

  test "should show micpost" do
    get :show, id: @micpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micpost
    assert_response :success
  end

  test "should update micpost" do
    put :update, id: @micpost, micpost: { content: @micpost.content, user_id: @micpost.user_id }
    assert_redirected_to micpost_path(assigns(:micpost))
  end

  test "should destroy micpost" do
    assert_difference('Micpost.count', -1) do
      delete :destroy, id: @micpost
    end

    assert_redirected_to micposts_path
  end
end
