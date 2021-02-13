require "application_system_test_case"

class StreamsTest < ApplicationSystemTestCase
  setup do
    @stream = streams(:one)
  end

  test "visiting the index" do
    visit streams_url
    assert_selector "h1", text: "Streams"
  end

  test "creating a Stream" do
    visit streams_url
    click_on "New Stream"

    fill_in "Classroom", with: @stream.classroom_id
    fill_in "Name", with: @stream.name
    click_on "Create Stream"

    assert_text "Stream was successfully created"
    click_on "Back"
  end

  test "updating a Stream" do
    visit streams_url
    click_on "Edit", match: :first

    fill_in "Classroom", with: @stream.classroom_id
    fill_in "Name", with: @stream.name
    click_on "Update Stream"

    assert_text "Stream was successfully updated"
    click_on "Back"
  end

  test "destroying a Stream" do
    visit streams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stream was successfully destroyed"
  end
end
