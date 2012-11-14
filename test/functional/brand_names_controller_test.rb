require 'test_helper'

class BrandNamesControllerTest < ActionController::TestCase
  setup do
    @brand_name = brand_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brand_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brand_name" do
    assert_difference('BrandName.count') do
      post :create, brand_name: { drug: @brand_name.drug, name: @brand_name.name }
    end

    assert_redirected_to brand_name_path(assigns(:brand_name))
  end

  test "should show brand_name" do
    get :show, id: @brand_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brand_name
    assert_response :success
  end

  test "should update brand_name" do
    put :update, id: @brand_name, brand_name: { drug: @brand_name.drug, name: @brand_name.name }
    assert_redirected_to brand_name_path(assigns(:brand_name))
  end

  test "should destroy brand_name" do
    assert_difference('BrandName.count', -1) do
      delete :destroy, id: @brand_name
    end

    assert_redirected_to brand_names_path
  end
end
