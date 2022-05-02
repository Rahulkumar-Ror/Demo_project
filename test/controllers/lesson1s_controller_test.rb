require "test_helper"

class Lesson1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson1 = lesson1s(:one)
  end

  test "should get index" do
    get lesson1s_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson1_url
    assert_response :success
  end

  test "should create lesson1" do
    assert_difference("Lesson1.count") do
      post lesson1s_url, params: { lesson1: { content: @lesson1.content, course1_id: @lesson1.course1_id, title: @lesson1.title } }
    end

    assert_redirected_to lesson1_url(Lesson1.last)
  end

  test "should show lesson1" do
    get lesson1_url(@lesson1)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson1_url(@lesson1)
    assert_response :success
  end

  test "should update lesson1" do
    patch lesson1_url(@lesson1), params: { lesson1: { content: @lesson1.content, course1_id: @lesson1.course1_id, title: @lesson1.title } }
    assert_redirected_to lesson1_url(@lesson1)
  end

  test "should destroy lesson1" do
    assert_difference("Lesson1.count", -1) do
      delete lesson1_url(@lesson1)
    end

    assert_redirected_to lesson1s_url
  end
end
