require 'test_helper'

class ExercisesGroupsControllerTest < ActionController::TestCase
  setup do
    @exercises_group = exercises_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercises_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercises_group" do
    assert_difference('ExercisesGroup.count') do
      post :create, exercises_group: { description: @exercises_group.description, name: @exercises_group.name }
    end

    assert_redirected_to exercises_group_path(assigns(:exercises_group))
  end

  test "should show exercises_group" do
    get :show, id: @exercises_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercises_group
    assert_response :success
  end

  test "should update exercises_group" do
    patch :update, id: @exercises_group, exercises_group: { description: @exercises_group.description, name: @exercises_group.name }
    assert_redirected_to exercises_group_path(assigns(:exercises_group))
  end

  test "should destroy exercises_group" do
    assert_difference('ExercisesGroup.count', -1) do
      delete :destroy, id: @exercises_group
    end

    assert_redirected_to exercises_groups_path
  end
end
