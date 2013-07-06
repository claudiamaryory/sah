require 'test_helper'

class CalificacionesServiciosControllerTest < ActionController::TestCase
  setup do
    @calificacion_servicio = calificaciones_servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calificaciones_servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calificacion_servicio" do
    assert_difference('CalificacionServicio.count') do
      post :create, calificacion_servicio: { observaciones: @calificacion_servicio.observaciones }
    end

    assert_redirected_to calificacion_servicio_path(assigns(:calificacion_servicio))
  end

  test "should show calificacion_servicio" do
    get :show, id: @calificacion_servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calificacion_servicio
    assert_response :success
  end

  test "should update calificacion_servicio" do
    put :update, id: @calificacion_servicio, calificacion_servicio: { observaciones: @calificacion_servicio.observaciones }
    assert_redirected_to calificacion_servicio_path(assigns(:calificacion_servicio))
  end

  test "should destroy calificacion_servicio" do
    assert_difference('CalificacionServicio.count', -1) do
      delete :destroy, id: @calificacion_servicio
    end

    assert_redirected_to calificaciones_servicios_path
  end
end
