require 'test_helper'

class TestrequiresControllerTest < ActionController::TestCase
  setup do
    @testrequire = testrequires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testrequires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testrequire" do
    assert_difference('Testrequire.count') do
      post :create, :testrequire => @testrequire.attributes
    end

    assert_redirected_to testrequire_path(assigns(:testrequire))
  end

  test "should show testrequire" do
    get :show, :id => @testrequire.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @testrequire.to_param
    assert_response :success
  end

  test "should update testrequire" do
    put :update, :id => @testrequire.to_param, :testrequire => @testrequire.attributes
    assert_redirected_to testrequire_path(assigns(:testrequire))
  end

  test "should destroy testrequire" do
    assert_difference('Testrequire.count', -1) do
      delete :destroy, :id => @testrequire.to_param
    end

    assert_redirected_to testrequires_path
  end
end
