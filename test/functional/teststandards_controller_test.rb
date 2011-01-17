require 'test_helper'

class TeststandardsControllerTest < ActionController::TestCase
  setup do
    @teststandard = teststandards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teststandards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teststandard" do
    assert_difference('Teststandard.count') do
      post :create, :teststandard => @teststandard.attributes
    end

    assert_redirected_to teststandard_path(assigns(:teststandard))
  end

  test "should show teststandard" do
    get :show, :id => @teststandard.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @teststandard.to_param
    assert_response :success
  end

  test "should update teststandard" do
    put :update, :id => @teststandard.to_param, :teststandard => @teststandard.attributes
    assert_redirected_to teststandard_path(assigns(:teststandard))
  end

  test "should destroy teststandard" do
    assert_difference('Teststandard.count', -1) do
      delete :destroy, :id => @teststandard.to_param
    end

    assert_redirected_to teststandards_path
  end
end
