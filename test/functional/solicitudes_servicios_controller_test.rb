require 'test_helper'

class SolicitudesServiciosControllerTest < ActionController::TestCase
  setup do
    @solicitud_servicio = solicitudes_servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitudes_servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitud_servicio" do
    assert_difference('SolicitudServicio.count') do
      post :create, solicitud_servicio: { apellido: @solicitud_servicio.apellido, celular: @solicitud_servicio.celular, direccion: @solicitud_servicio.direccion, documento: @solicitud_servicio.documento, email: @solicitud_servicio.email, interesado: @solicitud_servicio.interesado, nombre: @solicitud_servicio.nombre, telefono: @solicitud_servicio.telefono }
    end

    assert_redirected_to solicitud_servicio_path(assigns(:solicitud_servicio))
  end

  test "should show solicitud_servicio" do
    get :show, id: @solicitud_servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitud_servicio
    assert_response :success
  end

  test "should update solicitud_servicio" do
    put :update, id: @solicitud_servicio, solicitud_servicio: { apellido: @solicitud_servicio.apellido, celular: @solicitud_servicio.celular, direccion: @solicitud_servicio.direccion, documento: @solicitud_servicio.documento, email: @solicitud_servicio.email, interesado: @solicitud_servicio.interesado, nombre: @solicitud_servicio.nombre, telefono: @solicitud_servicio.telefono }
    assert_redirected_to solicitud_servicio_path(assigns(:solicitud_servicio))
  end

  test "should destroy solicitud_servicio" do
    assert_difference('SolicitudServicio.count', -1) do
      delete :destroy, id: @solicitud_servicio
    end

    assert_redirected_to solicitudes_servicios_path
  end
end
