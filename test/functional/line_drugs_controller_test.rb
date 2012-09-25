require 'test_helper'

class LineDrugsControllerTest < ActionController::TestCase
  setup do
    @line_drug = line_drugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_drugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_drug" do
    assert_difference('LineDrug.count') do
      post :create, line_drug: { cantitate: @line_drug.cantitate }
    end

    assert_redirected_to line_drug_path(assigns(:line_drug))
  end

  test "should show line_drug" do
    get :show, id: @line_drug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_drug
    assert_response :success
  end

  test "should update line_drug" do
    put :update, id: @line_drug, line_drug: { cantitate: @line_drug.cantitate }
    assert_redirected_to line_drug_path(assigns(:line_drug))
  end

  test "should destroy line_drug" do
    assert_difference('LineDrug.count', -1) do
      delete :destroy, id: @line_drug
    end

    assert_redirected_to line_drugs_path
  end
end
