require 'test_helper'

class DrugConcentrationsControllerTest < ActionController::TestCase
  setup do
    @drug_concentration = drug_concentrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drug_concentrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drug_concentration" do
    assert_difference('DrugConcentration.count') do
      post :create, drug_concentration: { concentration: @drug_concentration.concentration }
    end

    assert_redirected_to drug_concentration_path(assigns(:drug_concentration))
  end

  test "should show drug_concentration" do
    get :show, id: @drug_concentration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drug_concentration
    assert_response :success
  end

  test "should update drug_concentration" do
    put :update, id: @drug_concentration, drug_concentration: { concentration: @drug_concentration.concentration }
    assert_redirected_to drug_concentration_path(assigns(:drug_concentration))
  end

  test "should destroy drug_concentration" do
    assert_difference('DrugConcentration.count', -1) do
      delete :destroy, id: @drug_concentration
    end

    assert_redirected_to drug_concentrations_path
  end
end
