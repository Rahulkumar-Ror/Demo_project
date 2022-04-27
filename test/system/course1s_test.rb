require "application_system_test_case"

class Course1sTest < ApplicationSystemTestCase
  setup do
    @course1 = course1s(:one)
  end

  test "visiting the index" do
    visit course1s_url
    assert_selector "h1", text: "Course1s"
  end

  test "should create course1" do
    visit course1s_url
    click_on "New course1"

    fill_in "Description", with: @course1.description
    fill_in "Title", with: @course1.title
    click_on "Create Course1"

    assert_text "Course1 was successfully created"
    click_on "Back"
  end

  test "should update Course1" do
    visit course1_url(@course1)
    click_on "Edit this course1", match: :first

    fill_in "Description", with: @course1.description
    fill_in "Title", with: @course1.title
    click_on "Update Course1"

    assert_text "Course1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Course1" do
    visit course1_url(@course1)
    click_on "Destroy this course1", match: :first

    assert_text "Course1 was successfully destroyed"
  end
end
