require 'test_helper'

class RetetaControllerTest < ActionController::TestCase
  setup do
    @retetum = reteta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reteta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retetum" do
    assert_difference('Retetum.count') do
      post :create, retetum: { data: @retetum.data }
    end

    assert_redirected_to retetum_path(assigns(:retetum))
  end

  test "should show retetum" do
    get :show, id: @retetum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @retetum
    assert_response :success
  end

  test "should update retetum" do
    put :update, id: @retetum, retetum: { data: @retetum.data }
    assert_redirected_to retetum_path(assigns(:retetum))
  end

  test "should destroy retetum" do
    assert_difference('Retetum.count', -1) do
      delete :destroy, id: @retetum
    end

    assert_redirected_to reteta_path
  end
end
