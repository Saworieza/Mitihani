require "application_system_test_case"

class SubjectResultsTest < ApplicationSystemTestCase
  setup do
    @subject_result = subject_results(:one)
  end

  test "visiting the index" do
    visit subject_results_url
    assert_selector "h1", text: "Subject Results"
  end

  test "creating a Subject result" do
    visit subject_results_url
    click_on "New Subject Result"

    fill_in "Exam", with: @subject_result.exam_id
    fill_in "Stream", with: @subject_result.stream_id
    fill_in "Subject", with: @subject_result.subject_id
    click_on "Create Subject result"

    assert_text "Subject result was successfully created"
    click_on "Back"
  end

  test "updating a Subject result" do
    visit subject_results_url
    click_on "Edit", match: :first

    fill_in "Exam", with: @subject_result.exam_id
    fill_in "Stream", with: @subject_result.stream_id
    fill_in "Subject", with: @subject_result.subject_id
    click_on "Update Subject result"

    assert_text "Subject result was successfully updated"
    click_on "Back"
  end

  test "destroying a Subject result" do
    visit subject_results_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subject result was successfully destroyed"
  end
end
