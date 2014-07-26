require 'test_helper'

class PerfilclientesControllerTest < ActionController::TestCase
  setup do
    @perfilcliente = perfilclientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perfilclientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perfilcliente" do
    assert_difference('Perfilcliente.count') do
      post :create, perfilcliente: { cliente_id: @perfilcliente.cliente_id, perfil_id: @perfilcliente.perfil_id }
    end

    assert_redirected_to perfilcliente_path(assigns(:perfilcliente))
  end

  test "should show perfilcliente" do
    get :show, id: @perfilcliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perfilcliente
    assert_response :success
  end

  test "should update perfilcliente" do
    patch :update, id: @perfilcliente, perfilcliente: { cliente_id: @perfilcliente.cliente_id, perfil_id: @perfilcliente.perfil_id }
    assert_redirected_to perfilcliente_path(assigns(:perfilcliente))
  end

  test "should destroy perfilcliente" do
    assert_difference('Perfilcliente.count', -1) do
      delete :destroy, id: @perfilcliente
    end

    assert_redirected_to perfilclientes_path
  end
end
