require 'test_helper'

class ThreeGoodThingsControllerTest < ActionController::TestCase
  setup do
    @three_good_thing = three_good_things(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:three_good_things)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create three_good_thing" do
    assert_difference('ThreeGoodThing.count') do
      post :create, three_good_thing: { 1: @three_good_thing.1, 2: @three_good_thing.2, 3: @three_good_thing.3 }
    end

    assert_redirected_to three_good_thing_path(assigns(:three_good_thing))
  end

  test "should show three_good_thing" do
    get :show, id: @three_good_thing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @three_good_thing
    assert_response :success
  end

  test "should update three_good_thing" do
    patch :update, id: @three_good_thing, three_good_thing: { 1: @three_good_thing.1, 2: @three_good_thing.2, 3: @three_good_thing.3 }
    assert_redirected_to three_good_thing_path(assigns(:three_good_thing))
  end

  test "should destroy three_good_thing" do
    assert_difference('ThreeGoodThing.count', -1) do
      delete :destroy, id: @three_good_thing
    end

    assert_redirected_to three_good_things_path
  end
end
