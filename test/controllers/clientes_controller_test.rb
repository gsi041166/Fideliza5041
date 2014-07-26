require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { activo: @cliente.activo, acumulado: @cliente.acumulado, cartao: @cliente.cartao, data_nasc: @cliente.data_nasc, grupocliente_id: @cliente.grupocliente_id, localidade_id: @cliente.localidade_id, loja_id: @cliente.loja_id, nome: @cliente.nome, obs: @cliente.obs, profissao_id: @cliente.profissao_id, rua: @cliente.rua, sexo_id: @cliente.sexo_id, vendedor_id: @cliente.vendedor_id }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { activo: @cliente.activo, acumulado: @cliente.acumulado, cartao: @cliente.cartao, data_nasc: @cliente.data_nasc, grupocliente_id: @cliente.grupocliente_id, localidade_id: @cliente.localidade_id, loja_id: @cliente.loja_id, nome: @cliente.nome, obs: @cliente.obs, profissao_id: @cliente.profissao_id, rua: @cliente.rua, sexo_id: @cliente.sexo_id, vendedor_id: @cliente.vendedor_id }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
