require "test_helper"

class IpAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ip_address = ip_addresses(:one)
  end

  test "should get index" do
    get ip_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_ip_address_url
    assert_response :success
  end

  test "should create ip_address" do
    assert_difference("IpAddress.count") do
      post ip_addresses_url, params: { ip_address: { name: @ip_address.name } }
    end

    assert_redirected_to ip_address_url(IpAddress.last)
  end

  test "should show ip_address" do
    get ip_address_url(@ip_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_ip_address_url(@ip_address)
    assert_response :success
  end

  test "should update ip_address" do
    patch ip_address_url(@ip_address), params: { ip_address: { name: @ip_address.name } }
    assert_redirected_to ip_address_url(@ip_address)
  end

  test "should destroy ip_address" do
    assert_difference("IpAddress.count", -1) do
      delete ip_address_url(@ip_address)
    end

    assert_redirected_to ip_addresses_url
  end
end
