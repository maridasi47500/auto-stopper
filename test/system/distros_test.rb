require "application_system_test_case"

class DistrosTest < ApplicationSystemTestCase
  setup do
    @distro = distros(:one)
  end

  test "visiting the index" do
    visit distros_url
    assert_selector "h1", text: "Distros"
  end

  test "should create distro" do
    visit distros_url
    click_on "New distro"

    fill_in "Image", with: @distro.image
    fill_in "Name", with: @distro.name
    click_on "Create Distro"

    assert_text "Distro was successfully created"
    click_on "Back"
  end

  test "should update Distro" do
    visit distro_url(@distro)
    click_on "Edit this distro", match: :first

    fill_in "Image", with: @distro.image
    fill_in "Name", with: @distro.name
    click_on "Update Distro"

    assert_text "Distro was successfully updated"
    click_on "Back"
  end

  test "should destroy Distro" do
    visit distro_url(@distro)
    click_on "Destroy this distro", match: :first

    assert_text "Distro was successfully destroyed"
  end
end
