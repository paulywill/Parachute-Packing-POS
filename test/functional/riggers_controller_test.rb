require 'test_helper'

class RiggersControllerTest < ActionController::TestCase
  setup do
    @rigger = riggers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:riggers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rigger" do
    assert_difference('Rigger.count') do
      post :create, rigger: { rigger_licnum: @rigger.rigger_licnum, rigger_name: @rigger.rigger_name, rigger_rating: @rigger.rigger_rating }
    end

    assert_redirected_to rigger_path(assigns(:rigger))
  end

  test "should show rigger" do
    get :show, id: @rigger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rigger
    assert_response :success
  end

  test "should update rigger" do
    put :update, id: @rigger, rigger: { rigger_licnum: @rigger.rigger_licnum, rigger_name: @rigger.rigger_name, rigger_rating: @rigger.rigger_rating }
    assert_redirected_to rigger_path(assigns(:rigger))
  end

  test "should destroy rigger" do
    assert_difference('Rigger.count', -1) do
      delete :destroy, id: @rigger
    end

    assert_redirected_to riggers_path
  end
end
