require 'test_helper'

class TipomenutestsControllerTest < ActionController::TestCase
  setup do
    @tipomenutest = tipomenutests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipomenutests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipomenutest" do
    assert_difference('Tipomenutest.count') do
      post :create, tipomenutest: { description: @tipomenutest.description, name: @tipomenutest.name }
    end

    assert_redirected_to tipomenutest_path(assigns(:tipomenutest))
  end

  test "should show tipomenutest" do
    get :show, id: @tipomenutest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipomenutest
    assert_response :success
  end

  test "should update tipomenutest" do
    patch :update, id: @tipomenutest, tipomenutest: { description: @tipomenutest.description, name: @tipomenutest.name }
    assert_redirected_to tipomenutest_path(assigns(:tipomenutest))
  end

  test "should destroy tipomenutest" do
    assert_difference('Tipomenutest.count', -1) do
      delete :destroy, id: @tipomenutest
    end

    assert_redirected_to tipomenutests_path
  end
end
