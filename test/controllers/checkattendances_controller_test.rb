require 'test_helper'

class CheckattendancesControllerTest < ActionController::TestCase
  setup do
    @checkattendance = checkattendances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checkattendances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checkattendance" do
    assert_difference('Checkattendance.count') do
      post :create, checkattendance: {  }
    end

    assert_redirected_to checkattendance_path(assigns(:checkattendance))
  end

  test "should show checkattendance" do
    get :show, id: @checkattendance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checkattendance
    assert_response :success
  end

  test "should update checkattendance" do
    patch :update, id: @checkattendance, checkattendance: {  }
    assert_redirected_to checkattendance_path(assigns(:checkattendance))
  end

  test "should destroy checkattendance" do
    assert_difference('Checkattendance.count', -1) do
      delete :destroy, id: @checkattendance
    end

    assert_redirected_to checkattendances_path
  end
end
