require 'test_helper'

class PackingsControllerTest < ActionController::TestCase
  setup do
    @packing = packings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create packing" do
    assert_difference('Packing.count') do
      post :create, :packing => @packing.attributes
    end

    assert_redirected_to packing_path(assigns(:packing))
  end

  test "should show packing" do
    get :show, :id => @packing.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @packing.to_param
    assert_response :success
  end

  test "should update packing" do
    put :update, :id => @packing.to_param, :packing => @packing.attributes
    assert_redirected_to packing_path(assigns(:packing))
  end

  test "should destroy packing" do
    assert_difference('Packing.count', -1) do
      delete :destroy, :id => @packing.to_param
    end

    assert_redirected_to packings_path
  end
end
