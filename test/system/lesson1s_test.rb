require "application_system_test_case"

class Lesson1sTest < ApplicationSystemTestCase
  setup do
    @lesson1 = lesson1s(:one)
  end

  test "visiting the index" do
    visit lesson1s_url
    assert_selector "h1", text: "Lesson1s"
  end

  test "should create lesson1" do
    visit lesson1s_url
    click_on "New lesson1"

    fill_in "Content", with: @lesson1.content
    fill_in "Course1", with: @lesson1.course1_id
    fill_in "Title", with: @lesson1.title
    click_on "Create Lesson1"

    assert_text "Lesson1 was successfully created"
    click_on "Back"
  end

  test "should update Lesson1" do
    visit lesson1_url(@lesson1)
    click_on "Edit this lesson1", match: :first

    fill_in "Content", with: @lesson1.content
    fill_in "Course1", with: @lesson1.course1_id
    fill_in "Title", with: @lesson1.title
    click_on "Update Lesson1"

    assert_text "Lesson1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Lesson1" do
    visit lesson1_url(@lesson1)
    click_on "Destroy this lesson1", match: :first

    assert_text "Lesson1 was successfully destroyed"
  end
end
