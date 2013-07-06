require 'test_helper'

class ReprogramacionesControllerTest < ActionController::TestCase
  setup do
    @reprogramacion = reprogramaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reprogramaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reprogramacion" do
    assert_difference('Reprogramacion.count') do
      post :create, reprogramacion: { fecha: @reprogramacion.fecha, hora: @reprogramacion.hora, observacion: @reprogramacion.observacion }
    end

    assert_redirected_to reprogramacion_path(assigns(:reprogramacion))
  end

  test "should show reprogramacion" do
    get :show, id: @reprogramacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reprogramacion
    assert_response :success
  end

  test "should update reprogramacion" do
    put :update, id: @reprogramacion, reprogramacion: { fecha: @reprogramacion.fecha, hora: @reprogramacion.hora, observacion: @reprogramacion.observacion }
    assert_redirected_to reprogramacion_path(assigns(:reprogramacion))
  end

  test "should destroy reprogramacion" do
    assert_difference('Reprogramacion.count', -1) do
      delete :destroy, id: @reprogramacion
    end

    assert_redirected_to reprogramaciones_path
  end
end
