require 'test_helper'

class FelAnalizasControllerTest < ActionController::TestCase
  setup do
    @fel_analiza = fel_analizas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fel_analizas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fel_analiza" do
    assert_difference('FelAnaliza.count') do
      post :create, fel_analiza: { nume: @fel_analiza.nume, unitate_masura: @fel_analiza.unitate_masura, valori_normale: @fel_analiza.valori_normale }
    end

    assert_redirected_to fel_analiza_path(assigns(:fel_analiza))
  end

  test "should show fel_analiza" do
    get :show, id: @fel_analiza
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fel_analiza
    assert_response :success
  end

  test "should update fel_analiza" do
    put :update, id: @fel_analiza, fel_analiza: { nume: @fel_analiza.nume, unitate_masura: @fel_analiza.unitate_masura, valori_normale: @fel_analiza.valori_normale }
    assert_redirected_to fel_analiza_path(assigns(:fel_analiza))
  end

  test "should destroy fel_analiza" do
    assert_difference('FelAnaliza.count', -1) do
      delete :destroy, id: @fel_analiza
    end

    assert_redirected_to fel_analizas_path
  end
end
