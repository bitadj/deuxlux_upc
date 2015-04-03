require 'test_helper'

class UpcodesControllerTest < ActionController::TestCase
  setup do
    @upcode = upcodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:upcodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create upcode" do
    assert_difference('Upcode.count') do
      post :create, upcode: { upc: @upcode.upc }
    end

    assert_redirected_to upcode_path(assigns(:upcode))
  end

  test "should show upcode" do
    get :show, id: @upcode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @upcode
    assert_response :success
  end

  test "should update upcode" do
    patch :update, id: @upcode, upcode: { upc: @upcode.upc }
    assert_redirected_to upcode_path(assigns(:upcode))
  end

  test "should destroy upcode" do
    assert_difference('Upcode.count', -1) do
      delete :destroy, id: @upcode
    end

    assert_redirected_to upcodes_path
  end
end
