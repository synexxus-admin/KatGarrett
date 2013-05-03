require 'test_helper'

class GooglemapsControllerTest < ActionController::TestCase
  setup do
    @googlemap = googlemaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:googlemaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create googlemap" do
    assert_difference('Googlemap.count') do
      post :create, googlemap: { address: @googlemap.address, gmaps: @googlemap.gmaps, latitude: @googlemap.latitude, location_type: @googlemap.location_type, longitude: @googlemap.longitude }
    end

    assert_redirected_to googlemap_path(assigns(:googlemap))
  end

  test "should show googlemap" do
    get :show, id: @googlemap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @googlemap
    assert_response :success
  end

  test "should update googlemap" do
    put :update, id: @googlemap, googlemap: { address: @googlemap.address, gmaps: @googlemap.gmaps, latitude: @googlemap.latitude, location_type: @googlemap.location_type, longitude: @googlemap.longitude }
    assert_redirected_to googlemap_path(assigns(:googlemap))
  end

  test "should destroy googlemap" do
    assert_difference('Googlemap.count', -1) do
      delete :destroy, id: @googlemap
    end

    assert_redirected_to googlemaps_path
  end
end
