require 'test_helper'

class DrugComercialsControllerTest < ActionController::TestCase
  setup do
    @drug_comercial = drug_comercials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drug_comercials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drug_comercial" do
    assert_difference('DrugComercial.count') do
      post :create, drug_comercial: { nume: @drug_comercial.nume }
    end

    assert_redirected_to drug_comercial_path(assigns(:drug_comercial))
  end

  test "should show drug_comercial" do
    get :show, id: @drug_comercial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drug_comercial
    assert_response :success
  end

  test "should update drug_comercial" do
    put :update, id: @drug_comercial, drug_comercial: { nume: @drug_comercial.nume }
    assert_redirected_to drug_comercial_path(assigns(:drug_comercial))
  end

  test "should destroy drug_comercial" do
    assert_difference('DrugComercial.count', -1) do
      delete :destroy, id: @drug_comercial
    end

    assert_redirected_to drug_comercials_path
  end
end
