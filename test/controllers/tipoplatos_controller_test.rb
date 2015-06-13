require 'test_helper'

class TipoplatosControllerTest < ActionController::TestCase
  setup do
    @tipoplato = tipoplatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipoplatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipoplato" do
    assert_difference('Tipoplato.count') do
      post :create, tipoplato: { codigo: @tipoplato.codigo, description: @tipoplato.description, name: @tipoplato.name }
    end

    assert_redirected_to tipoplato_path(assigns(:tipoplato))
  end

  test "should show tipoplato" do
    get :show, id: @tipoplato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipoplato
    assert_response :success
  end

  test "should update tipoplato" do
    patch :update, id: @tipoplato, tipoplato: { codigo: @tipoplato.codigo, description: @tipoplato.description, name: @tipoplato.name }
    assert_redirected_to tipoplato_path(assigns(:tipoplato))
  end

  test "should destroy tipoplato" do
    assert_difference('Tipoplato.count', -1) do
      delete :destroy, id: @tipoplato
    end

    assert_redirected_to tipoplatos_path
  end
end
