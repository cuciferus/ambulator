require 'test_helper'

class RetetarsControllerTest < ActionController::TestCase
  setup do
    @retetar = retetars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:retetars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retetar" do
    assert_difference('Retetar.count') do
      post :create, retetar: { tip: @retetar.tip }
    end

    assert_redirected_to retetar_path(assigns(:retetar))
  end

  test "should show retetar" do
    get :show, id: @retetar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @retetar
    assert_response :success
  end

  test "should update retetar" do
    put :update, id: @retetar, retetar: { tip: @retetar.tip }
    assert_redirected_to retetar_path(assigns(:retetar))
  end

  test "should destroy retetar" do
    assert_difference('Retetar.count', -1) do
      delete :destroy, id: @retetar
    end

    assert_redirected_to retetars_path
  end
end
