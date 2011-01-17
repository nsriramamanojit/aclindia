require 'test_helper'

class TestmethodsControllerTest < ActionController::TestCase
  setup do
    @testmethod = testmethods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testmethods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testmethod" do
    assert_difference('Testmethod.count') do
      post :create, :testmethod => @testmethod.attributes
    end

    assert_redirected_to testmethod_path(assigns(:testmethod))
  end

  test "should show testmethod" do
    get :show, :id => @testmethod.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @testmethod.to_param
    assert_response :success
  end

  test "should update testmethod" do
    put :update, :id => @testmethod.to_param, :testmethod => @testmethod.attributes
    assert_redirected_to testmethod_path(assigns(:testmethod))
  end

  test "should destroy testmethod" do
    assert_difference('Testmethod.count', -1) do
      delete :destroy, :id => @testmethod.to_param
    end

    assert_redirected_to testmethods_path
  end
end
