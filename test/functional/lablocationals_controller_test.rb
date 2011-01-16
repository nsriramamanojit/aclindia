require 'test_helper'

class LablocationalsControllerTest < ActionController::TestCase
  setup do
    @lablocational = lablocationals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lablocationals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lablocational" do
    assert_difference('Lablocational.count') do
      post :create, :lablocational => @lablocational.attributes
    end

    assert_redirected_to lablocational_path(assigns(:lablocational))
  end

  test "should show lablocational" do
    get :show, :id => @lablocational.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lablocational.to_param
    assert_response :success
  end

  test "should update lablocational" do
    put :update, :id => @lablocational.to_param, :lablocational => @lablocational.attributes
    assert_redirected_to lablocational_path(assigns(:lablocational))
  end

  test "should destroy lablocational" do
    assert_difference('Lablocational.count', -1) do
      delete :destroy, :id => @lablocational.to_param
    end

    assert_redirected_to lablocationals_path
  end
end
