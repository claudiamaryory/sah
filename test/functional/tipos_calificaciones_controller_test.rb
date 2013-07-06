require 'test_helper'

class TiposCalificacionesControllerTest < ActionController::TestCase
  setup do
    @tipo_calificacion = tipos_calificaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipos_calificaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_calificacion" do
    assert_difference('TipoCalificacion.count') do
      post :create, tipo_calificacion: { nombre: @tipo_calificacion.nombre }
    end

    assert_redirected_to tipo_calificacion_path(assigns(:tipo_calificacion))
  end

  test "should show tipo_calificacion" do
    get :show, id: @tipo_calificacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_calificacion
    assert_response :success
  end

  test "should update tipo_calificacion" do
    put :update, id: @tipo_calificacion, tipo_calificacion: { nombre: @tipo_calificacion.nombre }
    assert_redirected_to tipo_calificacion_path(assigns(:tipo_calificacion))
  end

  test "should destroy tipo_calificacion" do
    assert_difference('TipoCalificacion.count', -1) do
      delete :destroy, id: @tipo_calificacion
    end

    assert_redirected_to tipos_calificaciones_path
  end
end
