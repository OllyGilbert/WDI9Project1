require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { classroom_id: @course.classroom_id, description: @course.description, end_at: @course.end_at, genre: @course.genre, name: @course.name, price: @course.price, programme_id: @course.programme_id, start_at: @course.start_at }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    put :update, id: @course, course: { classroom_id: @course.classroom_id, description: @course.description, end_at: @course.end_at, genre: @course.genre, name: @course.name, price: @course.price, programme_id: @course.programme_id, start_at: @course.start_at }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
