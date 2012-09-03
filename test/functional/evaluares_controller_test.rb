require 'test_helper'

class EvaluaresControllerTest < ActionController::TestCase
  setup do
    @evaluare = evaluares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluare" do
    assert_difference('Evaluare.count') do
      post :create, evaluare: { data: @evaluare.data, diagnostice: @evaluare.diagnostice, recomandari: @evaluare.recomandari }
    end

    assert_redirected_to evaluare_path(assigns(:evaluare))
  end

  test "should show evaluare" do
    get :show, id: @evaluare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluare
    assert_response :success
  end

  test "should update evaluare" do
    put :update, id: @evaluare, evaluare: { data: @evaluare.data, diagnostice: @evaluare.diagnostice, recomandari: @evaluare.recomandari }
    assert_redirected_to evaluare_path(assigns(:evaluare))
  end

  test "should destroy evaluare" do
    assert_difference('Evaluare.count', -1) do
      delete :destroy, id: @evaluare
    end

    assert_redirected_to evaluares_path
  end
end
