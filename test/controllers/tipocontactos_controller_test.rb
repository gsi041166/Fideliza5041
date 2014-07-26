require 'test_helper'

class TipocontactosControllerTest < ActionController::TestCase
  setup do
    @tipocontacto = tipocontactos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipocontactos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipocontacto" do
    assert_difference('Tipocontacto.count') do
      post :create, tipocontacto: { descricao: @tipocontacto.descricao }
    end

    assert_redirected_to tipocontacto_path(assigns(:tipocontacto))
  end

  test "should show tipocontacto" do
    get :show, id: @tipocontacto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipocontacto
    assert_response :success
  end

  test "should update tipocontacto" do
    patch :update, id: @tipocontacto, tipocontacto: { descricao: @tipocontacto.descricao }
    assert_redirected_to tipocontacto_path(assigns(:tipocontacto))
  end

  test "should destroy tipocontacto" do
    assert_difference('Tipocontacto.count', -1) do
      delete :destroy, id: @tipocontacto
    end

    assert_redirected_to tipocontactos_path
  end
end
