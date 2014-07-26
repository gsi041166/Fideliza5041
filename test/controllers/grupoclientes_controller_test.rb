require 'test_helper'

class GrupoclientesControllerTest < ActionController::TestCase
  setup do
    @grupocliente = grupoclientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupoclientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupocliente" do
    assert_difference('Grupocliente.count') do
      post :create, grupocliente: { descricao: @grupocliente.descricao, racio: @grupocliente.racio }
    end

    assert_redirected_to grupocliente_path(assigns(:grupocliente))
  end

  test "should show grupocliente" do
    get :show, id: @grupocliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grupocliente
    assert_response :success
  end

  test "should update grupocliente" do
    patch :update, id: @grupocliente, grupocliente: { descricao: @grupocliente.descricao, racio: @grupocliente.racio }
    assert_redirected_to grupocliente_path(assigns(:grupocliente))
  end

  test "should destroy grupocliente" do
    assert_difference('Grupocliente.count', -1) do
      delete :destroy, id: @grupocliente
    end

    assert_redirected_to grupoclientes_path
  end
end
