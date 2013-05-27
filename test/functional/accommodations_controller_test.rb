require 'test_helper'

class AccommodationsControllerTest < ActionController::TestCase
  setup do
    @accommodation = accommodations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accommodations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accommodation" do
    assert_difference('Accommodation.count') do
      post :create, accommodation: { continuity: @accommodation.continuity, first_dorm: @accommodation.first_dorm, interdiction_dorm: @accommodation.interdiction_dorm, interdiction_reason: @accommodation.interdiction_reason, interdiction_type: @accommodation.interdiction_type, last_dorm: @accommodation.last_dorm, last_room: @accommodation.last_room, roommate_group: @accommodation.roommate_group, roommate_name: @accommodation.roommate_name, second_dorm: @accommodation.second_dorm, social_case: @accommodation.social_case, status: @accommodation.status, third_dorm: @accommodation.third_dorm, user_id: @accommodation.user_id }
    end

    assert_redirected_to accommodation_path(assigns(:accommodation))
  end

  test "should show accommodation" do
    get :show, id: @accommodation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accommodation
    assert_response :success
  end

  test "should update accommodation" do
    put :update, id: @accommodation, accommodation: { continuity: @accommodation.continuity, first_dorm: @accommodation.first_dorm, interdiction_dorm: @accommodation.interdiction_dorm, interdiction_reason: @accommodation.interdiction_reason, interdiction_type: @accommodation.interdiction_type, last_dorm: @accommodation.last_dorm, last_room: @accommodation.last_room, roommate_group: @accommodation.roommate_group, roommate_name: @accommodation.roommate_name, second_dorm: @accommodation.second_dorm, social_case: @accommodation.social_case, status: @accommodation.status, third_dorm: @accommodation.third_dorm, user_id: @accommodation.user_id }
    assert_redirected_to accommodation_path(assigns(:accommodation))
  end

  test "should destroy accommodation" do
    assert_difference('Accommodation.count', -1) do
      delete :destroy, id: @accommodation
    end

    assert_redirected_to accommodations_path
  end
end
