require 'test_helper'

class DivsionsControllerTest < ActionController::TestCase
  setup do
    @divsion = divsions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:divsions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create divsion" do
    assert_difference('Divsion.count') do
      post :create, divsion: { name: @divsion.name }
    end

    assert_redirected_to divsion_path(assigns(:divsion))
  end

  test "should show divsion" do
    get :show, id: @divsion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @divsion
    assert_response :success
  end

  test "should update divsion" do
    patch :update, id: @divsion, divsion: { name: @divsion.name }
    assert_redirected_to divsion_path(assigns(:divsion))
  end

  test "should destroy divsion" do
    assert_difference('Divsion.count', -1) do
      delete :destroy, id: @divsion
    end

    assert_redirected_to divsions_path
  end
end
