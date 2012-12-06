require 'test_helper'

class PackersControllerTest < ActionController::TestCase
  setup do
    @packer = packers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create packer" do
    assert_difference('Packer.count') do
      post :create, packer: { p_cspa_date: @packer.p_cspa_date, p_name: @packer.p_name, p_team: @packer.p_team }
    end

    assert_redirected_to packer_path(assigns(:packer))
  end

  test "should show packer" do
    get :show, id: @packer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @packer
    assert_response :success
  end

  test "should update packer" do
    put :update, id: @packer, packer: { p_cspa_date: @packer.p_cspa_date, p_name: @packer.p_name, p_team: @packer.p_team }
    assert_redirected_to packer_path(assigns(:packer))
  end

  test "should destroy packer" do
    assert_difference('Packer.count', -1) do
      delete :destroy, id: @packer
    end

    assert_redirected_to packers_path
  end
end
