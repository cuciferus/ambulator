require 'test_helper'

class MedicsControllerTest < ActionController::TestCase
  setup do
    @medic = medics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medic" do
    assert_difference('Medic.count') do
      post :create, medic: { cod_parafa: @medic.cod_parafa, nume: @medic.nume, prenume: @medic.prenume }
    end

    assert_redirected_to medic_path(assigns(:medic))
  end

  test "should show medic" do
    get :show, id: @medic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medic
    assert_response :success
  end

  test "should update medic" do
    put :update, id: @medic, medic: { cod_parafa: @medic.cod_parafa, nume: @medic.nume, prenume: @medic.prenume }
    assert_redirected_to medic_path(assigns(:medic))
  end

  test "should destroy medic" do
    assert_difference('Medic.count', -1) do
      delete :destroy, id: @medic
    end

    assert_redirected_to medics_path
  end
end
