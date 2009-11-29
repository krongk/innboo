require 'test_helper'

class GnotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gnotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gnote" do
    assert_difference('Gnote.count') do
      post :create, :gnote => { }
    end

    assert_redirected_to gnote_path(assigns(:gnote))
  end

  test "should show gnote" do
    get :show, :id => gnotes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => gnotes(:one).to_param
    assert_response :success
  end

  test "should update gnote" do
    put :update, :id => gnotes(:one).to_param, :gnote => { }
    assert_redirected_to gnote_path(assigns(:gnote))
  end

  test "should destroy gnote" do
    assert_difference('Gnote.count', -1) do
      delete :destroy, :id => gnotes(:one).to_param
    end

    assert_redirected_to gnotes_path
  end
end
