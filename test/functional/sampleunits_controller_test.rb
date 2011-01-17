require 'test_helper'

class SampleunitsControllerTest < ActionController::TestCase
  setup do
    @sampleunit = sampleunits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sampleunits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sampleunit" do
    assert_difference('Sampleunit.count') do
      post :create, :sampleunit => @sampleunit.attributes
    end

    assert_redirected_to sampleunit_path(assigns(:sampleunit))
  end

  test "should show sampleunit" do
    get :show, :id => @sampleunit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sampleunit.to_param
    assert_response :success
  end

  test "should update sampleunit" do
    put :update, :id => @sampleunit.to_param, :sampleunit => @sampleunit.attributes
    assert_redirected_to sampleunit_path(assigns(:sampleunit))
  end

  test "should destroy sampleunit" do
    assert_difference('Sampleunit.count', -1) do
      delete :destroy, :id => @sampleunit.to_param
    end

    assert_redirected_to sampleunits_path
  end
end
