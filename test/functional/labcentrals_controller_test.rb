require 'test_helper'

class LabcentralsControllerTest < ActionController::TestCase
  setup do
    @labcentral = labcentrals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:labcentrals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create labcentral" do
    assert_difference('Labcentral.count') do
      post :create, :labcentral => @labcentral.attributes
    end

    assert_redirected_to labcentral_path(assigns(:labcentral))
  end

  test "should show labcentral" do
    get :show, :id => @labcentral.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @labcentral.to_param
    assert_response :success
  end

  test "should update labcentral" do
    put :update, :id => @labcentral.to_param, :labcentral => @labcentral.attributes
    assert_redirected_to labcentral_path(assigns(:labcentral))
  end

  test "should destroy labcentral" do
    assert_difference('Labcentral.count', -1) do
      delete :destroy, :id => @labcentral.to_param
    end

    assert_redirected_to labcentrals_path
  end
end
