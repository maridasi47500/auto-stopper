require "application_system_test_case"

class IpAddressesTest < ApplicationSystemTestCase
  setup do
    @ip_address = ip_addresses(:one)
  end

  test "visiting the index" do
    visit ip_addresses_url
    assert_selector "h1", text: "Ip addresses"
  end

  test "should create ip address" do
    visit ip_addresses_url
    click_on "New ip address"

    fill_in "Name", with: @ip_address.name
    click_on "Create Ip address"

    assert_text "Ip address was successfully created"
    click_on "Back"
  end

  test "should update Ip address" do
    visit ip_address_url(@ip_address)
    click_on "Edit this ip address", match: :first

    fill_in "Name", with: @ip_address.name
    click_on "Update Ip address"

    assert_text "Ip address was successfully updated"
    click_on "Back"
  end

  test "should destroy Ip address" do
    visit ip_address_url(@ip_address)
    click_on "Destroy this ip address", match: :first

    assert_text "Ip address was successfully destroyed"
  end
end
