require 'test_helper'

class SampleplacesControllerTest < ActionController::TestCase
  setup do
    @sampleplace = sampleplaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sampleplaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sampleplace" do
    assert_difference('Sampleplace.count') do
      post :create, :sampleplace => @sampleplace.attributes
    end

    assert_redirected_to sampleplace_path(assigns(:sampleplace))
  end

  test "should show sampleplace" do
    get :show, :id => @sampleplace.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sampleplace.to_param
    assert_response :success
  end

  test "should update sampleplace" do
    put :update, :id => @sampleplace.to_param, :sampleplace => @sampleplace.attributes
    assert_redirected_to sampleplace_path(assigns(:sampleplace))
  end

  test "should destroy sampleplace" do
    assert_difference('Sampleplace.count', -1) do
      delete :destroy, :id => @sampleplace.to_param
    end

    assert_redirected_to sampleplaces_path
  end
end
