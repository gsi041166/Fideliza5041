require 'test_helper'

class ProfissaosControllerTest < ActionController::TestCase
  setup do
    @profissao = profissaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profissaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profissao" do
    assert_difference('Profissao.count') do
      post :create, profissao: { descricao: @profissao.descricao }
    end

    assert_redirected_to profissao_path(assigns(:profissao))
  end

  test "should show profissao" do
    get :show, id: @profissao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profissao
    assert_response :success
  end

  test "should update profissao" do
    patch :update, id: @profissao, profissao: { descricao: @profissao.descricao }
    assert_redirected_to profissao_path(assigns(:profissao))
  end

  test "should destroy profissao" do
    assert_difference('Profissao.count', -1) do
      delete :destroy, id: @profissao
    end

    assert_redirected_to profissaos_path
  end
end
