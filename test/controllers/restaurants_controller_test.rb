require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post :create, restaurant: { contacto: @restaurant.contacto, correo: @restaurant.correo, description: @restaurant.description, direccion: @restaurant.direccion, distrito_id: @restaurant.distrito_id, estado: @restaurant.estado, flagChifa: @restaurant.flagChifa, flagCriollo: @restaurant.flagCriollo, flagMarino: @restaurant.flagMarino, flagPastas: @restaurant.flagPastas, flagVegetariano: @restaurant.flagVegetariano, name: @restaurant.name, ruc: @restaurant.ruc, telefono: @restaurant.telefono, user_id: @restaurant.user_id }
    end

    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should show restaurant" do
    get :show, id: @restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant
    assert_response :success
  end

  test "should update restaurant" do
    patch :update, id: @restaurant, restaurant: { contacto: @restaurant.contacto, correo: @restaurant.correo, description: @restaurant.description, direccion: @restaurant.direccion, distrito_id: @restaurant.distrito_id, estado: @restaurant.estado, flagChifa: @restaurant.flagChifa, flagCriollo: @restaurant.flagCriollo, flagMarino: @restaurant.flagMarino, flagPastas: @restaurant.flagPastas, flagVegetariano: @restaurant.flagVegetariano, name: @restaurant.name, ruc: @restaurant.ruc, telefono: @restaurant.telefono, user_id: @restaurant.user_id }
    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete :destroy, id: @restaurant
    end

    assert_redirected_to restaurants_path
  end
end
