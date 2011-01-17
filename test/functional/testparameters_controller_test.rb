require 'test_helper'

class TestparametersControllerTest < ActionController::TestCase
  setup do
    @testparameter = testparameters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testparameters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testparameter" do
    assert_difference('Testparameter.count') do
      post :create, :testparameter => @testparameter.attributes
    end

    assert_redirected_to testparameter_path(assigns(:testparameter))
  end

  test "should show testparameter" do
    get :show, :id => @testparameter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @testparameter.to_param
    assert_response :success
  end

  test "should update testparameter" do
    put :update, :id => @testparameter.to_param, :testparameter => @testparameter.attributes
    assert_redirected_to testparameter_path(assigns(:testparameter))
  end

  test "should destroy testparameter" do
    assert_difference('Testparameter.count', -1) do
      delete :destroy, :id => @testparameter.to_param
    end

    assert_redirected_to testparameters_path
  end
end
