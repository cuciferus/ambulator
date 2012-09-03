require 'test_helper'

class PacientsControllerTest < ActionController::TestCase
  setup do
    @pacient = pacients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pacients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pacient" do
    assert_difference('Pacient.count') do
      post :create, pacient: { adresa: @pacient.adresa, cnp: @pacient.cnp, debut_diabet: @pacient.debut_diabet, focad: @pacient.focad, nume: @pacient.nume, prenume: @pacient.prenume }
    end

    assert_redirected_to pacient_path(assigns(:pacient))
  end

  test "should show pacient" do
    get :show, id: @pacient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pacient
    assert_response :success
  end

  test "should update pacient" do
    put :update, id: @pacient, pacient: { adresa: @pacient.adresa, cnp: @pacient.cnp, debut_diabet: @pacient.debut_diabet, focad: @pacient.focad, nume: @pacient.nume, prenume: @pacient.prenume }
    assert_redirected_to pacient_path(assigns(:pacient))
  end

  test "should destroy pacient" do
    assert_difference('Pacient.count', -1) do
      delete :destroy, id: @pacient
    end

    assert_redirected_to pacients_path
  end
end
