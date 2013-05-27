require 'test_helper'

class DormitoryCategoriesControllerTest < ActionController::TestCase
  setup do
    @dormitory_category = dormitory_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dormitory_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dormitory_category" do
    assert_difference('DormitoryCategory.count') do
      post :create, dormitory_category: { name: @dormitory_category.name }
    end

    assert_redirected_to dormitory_category_path(assigns(:dormitory_category))
  end

  test "should show dormitory_category" do
    get :show, id: @dormitory_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dormitory_category
    assert_response :success
  end

  test "should update dormitory_category" do
    put :update, id: @dormitory_category, dormitory_category: { name: @dormitory_category.name }
    assert_redirected_to dormitory_category_path(assigns(:dormitory_category))
  end

  test "should destroy dormitory_category" do
    assert_difference('DormitoryCategory.count', -1) do
      delete :destroy, id: @dormitory_category
    end

    assert_redirected_to dormitory_categories_path
  end
end
