require 'test_helper'

class LabregionalsControllerTest < ActionController::TestCase
  setup do
    @labregional = labregionals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:labregionals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create labregional" do
    assert_difference('Labregional.count') do
      post :create, :labregional => @labregional.attributes
    end

    assert_redirected_to labregional_path(assigns(:labregional))
  end

  test "should show labregional" do
    get :show, :id => @labregional.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @labregional.to_param
    assert_response :success
  end

  test "should update labregional" do
    put :update, :id => @labregional.to_param, :labregional => @labregional.attributes
    assert_redirected_to labregional_path(assigns(:labregional))
  end

  test "should destroy labregional" do
    assert_difference('Labregional.count', -1) do
      delete :destroy, :id => @labregional.to_param
    end

    assert_redirected_to labregionals_path
  end
end
