require "application_system_test_case"

class ComputerhackingsTest < ApplicationSystemTestCase
  setup do
    @computerhacking = computerhackings(:one)
  end

  test "visiting the index" do
    visit computerhackings_url
    assert_selector "h1", text: "Computerhackings"
  end

  test "should create computerhacking" do
    visit computerhackings_url
    click_on "New computerhacking"

    fill_in "Description", with: @computerhacking.description
    fill_in "Name", with: @computerhacking.name
    click_on "Create Computerhacking"

    assert_text "Computerhacking was successfully created"
    click_on "Back"
  end

  test "should update Computerhacking" do
    visit computerhacking_url(@computerhacking)
    click_on "Edit this computerhacking", match: :first

    fill_in "Description", with: @computerhacking.description
    fill_in "Name", with: @computerhacking.name
    click_on "Update Computerhacking"

    assert_text "Computerhacking was successfully updated"
    click_on "Back"
  end

  test "should destroy Computerhacking" do
    visit computerhacking_url(@computerhacking)
    click_on "Destroy this computerhacking", match: :first

    assert_text "Computerhacking was successfully destroyed"
  end
end
