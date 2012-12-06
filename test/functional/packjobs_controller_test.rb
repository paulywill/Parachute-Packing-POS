require 'test_helper'

class PackjobsControllerTest < ActionController::TestCase
  setup do
    @packjob = packjobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packjobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create packjob" do
    assert_difference('Packjob.count') do
      post :create, packjob: { pj_damage: @packjob.pj_damage, pj_extranotes: @packjob.pj_extranotes, pj_guestpacker: @packjob.pj_guestpacker, pj_packer: @packjob.pj_packer, pj_rig_type_number: @packjob.pj_rig_type_number }
    end

    assert_redirected_to packjob_path(assigns(:packjob))
  end

  test "should show packjob" do
    get :show, id: @packjob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @packjob
    assert_response :success
  end

  test "should update packjob" do
    put :update, id: @packjob, packjob: { pj_damage: @packjob.pj_damage, pj_extranotes: @packjob.pj_extranotes, pj_guestpacker: @packjob.pj_guestpacker, pj_packer: @packjob.pj_packer, pj_rig_type_number: @packjob.pj_rig_type_number }
    assert_redirected_to packjob_path(assigns(:packjob))
  end

  test "should destroy packjob" do
    assert_difference('Packjob.count', -1) do
      delete :destroy, id: @packjob
    end

    assert_redirected_to packjobs_path
  end
end
