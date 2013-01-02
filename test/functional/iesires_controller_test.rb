require 'test_helper'

class IesiresControllerTest < ActionController::TestCase
  setup do
    @iesire = iesires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iesires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iesire" do
    assert_difference('Iesire.count') do
      post :create, iesire: { data: @iesire.data, motiv: @iesire.motiv }
    end

    assert_redirected_to iesire_path(assigns(:iesire))
  end

  test "should show iesire" do
    get :show, id: @iesire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iesire
    assert_response :success
  end

  test "should update iesire" do
    put :update, id: @iesire, iesire: { data: @iesire.data, motiv: @iesire.motiv }
    assert_redirected_to iesire_path(assigns(:iesire))
  end

  test "should destroy iesire" do
    assert_difference('Iesire.count', -1) do
      delete :destroy, id: @iesire
    end

    assert_redirected_to iesires_path
  end
end
