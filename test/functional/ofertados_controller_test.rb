require 'test_helper'

class OfertadosControllerTest < ActionController::TestCase
  setup do
    @ofertado = ofertados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ofertados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ofertado" do
    assert_difference('Ofertado.count') do
      post :create, ofertado: { nombre: @ofertado.nombre }
    end

    assert_redirected_to ofertado_path(assigns(:ofertado))
  end

  test "should show ofertado" do
    get :show, id: @ofertado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ofertado
    assert_response :success
  end

  test "should update ofertado" do
    put :update, id: @ofertado, ofertado: { nombre: @ofertado.nombre }
    assert_redirected_to ofertado_path(assigns(:ofertado))
  end

  test "should destroy ofertado" do
    assert_difference('Ofertado.count', -1) do
      delete :destroy, id: @ofertado
    end

    assert_redirected_to ofertados_path
  end
end
