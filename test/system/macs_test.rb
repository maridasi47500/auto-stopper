require "application_system_test_case"

class MacsTest < ApplicationSystemTestCase
  setup do
    @mac = macs(:one)
  end

  test "visiting the index" do
    visit macs_url
    assert_selector "h1", text: "Macs"
  end

  test "should create mac" do
    visit macs_url
    click_on "New mac"

    fill_in "Name", with: @mac.name
    click_on "Create Mac"

    assert_text "Mac was successfully created"
    click_on "Back"
  end

  test "should update Mac" do
    visit mac_url(@mac)
    click_on "Edit this mac", match: :first

    fill_in "Name", with: @mac.name
    click_on "Update Mac"

    assert_text "Mac was successfully updated"
    click_on "Back"
  end

  test "should destroy Mac" do
    visit mac_url(@mac)
    click_on "Destroy this mac", match: :first

    assert_text "Mac was successfully destroyed"
  end
end
