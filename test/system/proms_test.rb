require "application_system_test_case"

class PromsTest < ApplicationSystemTestCase
  setup do
    @prom = proms(:one)
  end

  test "visiting the index" do
    visit proms_url
    assert_selector "h1", text: "Proms"
  end

  test "should create prom" do
    visit proms_url
    click_on "New prom"

    fill_in "Description", with: @prom.description
    fill_in "Name", with: @prom.name
    click_on "Create Prom"

    assert_text "Prom was successfully created"
    click_on "Back"
  end

  test "should update Prom" do
    visit prom_url(@prom)
    click_on "Edit this prom", match: :first

    fill_in "Description", with: @prom.description
    fill_in "Name", with: @prom.name
    click_on "Update Prom"

    assert_text "Prom was successfully updated"
    click_on "Back"
  end

  test "should destroy Prom" do
    visit prom_url(@prom)
    click_on "Destroy this prom", match: :first

    assert_text "Prom was successfully destroyed"
  end
end
