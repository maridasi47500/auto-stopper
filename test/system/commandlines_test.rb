require "application_system_test_case"

class CommandlinesTest < ApplicationSystemTestCase
  setup do
    @commandline = commandlines(:one)
  end

  test "visiting the index" do
    visit commandlines_url
    assert_selector "h1", text: "Commandlines"
  end

  test "should create commandline" do
    visit commandlines_url
    click_on "New commandline"

    fill_in "Content", with: @commandline.content
    fill_in "Place", with: @commandline.place_id
    fill_in "Title", with: @commandline.title
    click_on "Create Commandline"

    assert_text "Commandline was successfully created"
    click_on "Back"
  end

  test "should update Commandline" do
    visit commandline_url(@commandline)
    click_on "Edit this commandline", match: :first

    fill_in "Content", with: @commandline.content
    fill_in "Place", with: @commandline.place_id
    fill_in "Title", with: @commandline.title
    click_on "Update Commandline"

    assert_text "Commandline was successfully updated"
    click_on "Back"
  end

  test "should destroy Commandline" do
    visit commandline_url(@commandline)
    click_on "Destroy this commandline", match: :first

    assert_text "Commandline was successfully destroyed"
  end
end
