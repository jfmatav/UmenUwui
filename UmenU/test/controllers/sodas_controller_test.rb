require 'test_helper'

class SodasControllerTest < ActionController::TestCase
  setup do
    @soda = sodas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sodas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soda" do
    assert_difference('Soda.count') do
      post :create, soda: { descripcion: @soda.descripcion, lat: @soda.lat, long: @soda.long, nombre: @soda.nombre }
    end

    assert_redirected_to soda_path(assigns(:soda))
  end

  test "should show soda" do
    get :show, id: @soda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soda
    assert_response :success
  end

  test "should update soda" do
    patch :update, id: @soda, soda: { descripcion: @soda.descripcion, lat: @soda.lat, long: @soda.long, nombre: @soda.nombre }
    assert_redirected_to soda_path(assigns(:soda))
  end

  test "should destroy soda" do
    assert_difference('Soda.count', -1) do
      delete :destroy, id: @soda
    end

    assert_redirected_to sodas_path
  end
end
