require "test_helper"

class Course1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course1 = course1s(:one)
  end

  test "should get index" do
    get course1s_url
    assert_response :success
  end

  test "should get new" do
    get new_course1_url
    assert_response :success
  end

  test "should create course1" do
    assert_difference("Course1.count") do
      post course1s_url, params: { course1: { description: @course1.description, title: @course1.title } }
    end

    assert_redirected_to course1_url(Course1.last)
  end

  test "should show course1" do
    get course1_url(@course1)
    assert_response :success
  end

  test "should get edit" do
    get edit_course1_url(@course1)
    assert_response :success
  end

  test "should update course1" do
    patch course1_url(@course1), params: { course1: { description: @course1.description, title: @course1.title } }
    assert_redirected_to course1_url(@course1)
  end

  test "should destroy course1" do
    assert_difference("Course1.count", -1) do
      delete course1_url(@course1)
    end

    assert_redirected_to course1s_url
  end
end
