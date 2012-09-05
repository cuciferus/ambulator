require 'test_helper'

class ParaclinicsControllerTest < ActionController::TestCase
  setup do
    @paraclinic = paraclinics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paraclinics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paraclinic" do
    assert_difference('Paraclinic.count') do
      post :create, paraclinic: { nume: @paraclinic.nume, valoare: @paraclinic.valoare }
    end

    assert_redirected_to paraclinic_path(assigns(:paraclinic))
  end

  test "should show paraclinic" do
    get :show, id: @paraclinic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paraclinic
    assert_response :success
  end

  test "should update paraclinic" do
    put :update, id: @paraclinic, paraclinic: { nume: @paraclinic.nume, valoare: @paraclinic.valoare }
    assert_redirected_to paraclinic_path(assigns(:paraclinic))
  end

  test "should destroy paraclinic" do
    assert_difference('Paraclinic.count', -1) do
      delete :destroy, id: @paraclinic
    end

    assert_redirected_to paraclinics_path
  end
end
