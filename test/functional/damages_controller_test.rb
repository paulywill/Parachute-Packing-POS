require 'test_helper'

class DamagesControllerTest < ActionController::TestCase
  setup do
    @damage = damages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:damages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create damage" do
    assert_difference('Damage.count') do
      post :create, damage: { dam_detail: @damage.dam_detail, dam_dstamp: @damage.dam_dstamp, dam_reporter: @damage.dam_reporter, dam_rig: @damage.dam_rig }
    end

    assert_redirected_to damage_path(assigns(:damage))
  end

  test "should show damage" do
    get :show, id: @damage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @damage
    assert_response :success
  end

  test "should update damage" do
    put :update, id: @damage, damage: { dam_detail: @damage.dam_detail, dam_dstamp: @damage.dam_dstamp, dam_reporter: @damage.dam_reporter, dam_rig: @damage.dam_rig }
    assert_redirected_to damage_path(assigns(:damage))
  end

  test "should destroy damage" do
    assert_difference('Damage.count', -1) do
      delete :destroy, id: @damage
    end

    assert_redirected_to damages_path
  end
end
