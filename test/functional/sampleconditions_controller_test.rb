require 'test_helper'

class SampleconditionsControllerTest < ActionController::TestCase
  setup do
    @samplecondition = sampleconditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sampleconditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create samplecondition" do
    assert_difference('Samplecondition.count') do
      post :create, :samplecondition => @samplecondition.attributes
    end

    assert_redirected_to samplecondition_path(assigns(:samplecondition))
  end

  test "should show samplecondition" do
    get :show, :id => @samplecondition.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @samplecondition.to_param
    assert_response :success
  end

  test "should update samplecondition" do
    put :update, :id => @samplecondition.to_param, :samplecondition => @samplecondition.attributes
    assert_redirected_to samplecondition_path(assigns(:samplecondition))
  end

  test "should destroy samplecondition" do
    assert_difference('Samplecondition.count', -1) do
      delete :destroy, :id => @samplecondition.to_param
    end

    assert_redirected_to sampleconditions_path
  end
end
