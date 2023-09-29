require "test_helper"

class PromsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prom = proms(:one)
  end

  test "should get index" do
    get proms_url
    assert_response :success
  end

  test "should get new" do
    get new_prom_url
    assert_response :success
  end

  test "should create prom" do
    assert_difference("Prom.count") do
      post proms_url, params: { prom: { description: @prom.description, name: @prom.name } }
    end

    assert_redirected_to prom_url(Prom.last)
  end

  test "should show prom" do
    get prom_url(@prom)
    assert_response :success
  end

  test "should get edit" do
    get edit_prom_url(@prom)
    assert_response :success
  end

  test "should update prom" do
    patch prom_url(@prom), params: { prom: { description: @prom.description, name: @prom.name } }
    assert_redirected_to prom_url(@prom)
  end

  test "should destroy prom" do
    assert_difference("Prom.count", -1) do
      delete prom_url(@prom)
    end

    assert_redirected_to proms_url
  end
end
