require 'test_helper'

class LocalidadesControllerTest < ActionController::TestCase
  setup do
    @localidade = localidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:localidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create localidade" do
    assert_difference('Localidade.count') do
      post :create, localidade: { cidade: @localidade.cidade, cod_postal: @localidade.cod_postal, localidade: @localidade.localidade, pais_id: @localidade.pais_id }
    end

    assert_redirected_to localidade_path(assigns(:localidade))
  end

  test "should show localidade" do
    get :show, id: @localidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @localidade
    assert_response :success
  end

  test "should update localidade" do
    patch :update, id: @localidade, localidade: { cidade: @localidade.cidade, cod_postal: @localidade.cod_postal, localidade: @localidade.localidade, pais_id: @localidade.pais_id }
    assert_redirected_to localidade_path(assigns(:localidade))
  end

  test "should destroy localidade" do
    assert_difference('Localidade.count', -1) do
      delete :destroy, id: @localidade
    end

    assert_redirected_to localidades_path
  end
end
