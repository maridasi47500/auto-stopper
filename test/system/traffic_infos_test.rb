require "application_system_test_case"

class TrafficInfosTest < ApplicationSystemTestCase
  setup do
    @traffic_info = traffic_infos(:one)
  end

  test "visiting the index" do
    visit traffic_infos_url
    assert_selector "h1", text: "Traffic infos"
  end

  test "should create traffic info" do
    visit traffic_infos_url
    click_on "New traffic info"

    fill_in "Destination", with: @traffic_info.destination_id
    fill_in "Source", with: @traffic_info.source_id
    fill_in "Time", with: @traffic_info.time
    click_on "Create Traffic info"

    assert_text "Traffic info was successfully created"
    click_on "Back"
  end

  test "should update Traffic info" do
    visit traffic_info_url(@traffic_info)
    click_on "Edit this traffic info", match: :first

    fill_in "Destination", with: @traffic_info.destination_id
    fill_in "Source", with: @traffic_info.source_id
    fill_in "Time", with: @traffic_info.time
    click_on "Update Traffic info"

    assert_text "Traffic info was successfully updated"
    click_on "Back"
  end

  test "should destroy Traffic info" do
    visit traffic_info_url(@traffic_info)
    click_on "Destroy this traffic info", match: :first

    assert_text "Traffic info was successfully destroyed"
  end
end
