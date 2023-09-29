require "test_helper"

class ComputerhackingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @computerhacking = computerhackings(:one)
  end

  test "should get index" do
    get computerhackings_url
    assert_response :success
  end

  test "should get new" do
    get new_computerhacking_url
    assert_response :success
  end

  test "should create computerhacking" do
    assert_difference("Computerhacking.count") do
      post computerhackings_url, params: { computerhacking: { description: @computerhacking.description, name: @computerhacking.name } }
    end

    assert_redirected_to computerhacking_url(Computerhacking.last)
  end

  test "should show computerhacking" do
    get computerhacking_url(@computerhacking)
    assert_response :success
  end

  test "should get edit" do
    get edit_computerhacking_url(@computerhacking)
    assert_response :success
  end

  test "should update computerhacking" do
    patch computerhacking_url(@computerhacking), params: { computerhacking: { description: @computerhacking.description, name: @computerhacking.name } }
    assert_redirected_to computerhacking_url(@computerhacking)
  end

  test "should destroy computerhacking" do
    assert_difference("Computerhacking.count", -1) do
      delete computerhacking_url(@computerhacking)
    end

    assert_redirected_to computerhackings_url
  end
end
