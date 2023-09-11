require "test_helper"

class MacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mac = macs(:one)
  end

  test "should get index" do
    get macs_url
    assert_response :success
  end

  test "should get new" do
    get new_mac_url
    assert_response :success
  end

  test "should create mac" do
    assert_difference("Mac.count") do
      post macs_url, params: { mac: { name: @mac.name } }
    end

    assert_redirected_to mac_url(Mac.last)
  end

  test "should show mac" do
    get mac_url(@mac)
    assert_response :success
  end

  test "should get edit" do
    get edit_mac_url(@mac)
    assert_response :success
  end

  test "should update mac" do
    patch mac_url(@mac), params: { mac: { name: @mac.name } }
    assert_redirected_to mac_url(@mac)
  end

  test "should destroy mac" do
    assert_difference("Mac.count", -1) do
      delete mac_url(@mac)
    end

    assert_redirected_to macs_url
  end
end
