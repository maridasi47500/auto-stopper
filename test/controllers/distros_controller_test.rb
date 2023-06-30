require "test_helper"

class DistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distro = distros(:one)
  end

  test "should get index" do
    get distros_url
    assert_response :success
  end

  test "should get new" do
    get new_distro_url
    assert_response :success
  end

  test "should create distro" do
    assert_difference("Distro.count") do
      post distros_url, params: { distro: { image: @distro.image, name: @distro.name } }
    end

    assert_redirected_to distro_url(Distro.last)
  end

  test "should show distro" do
    get distro_url(@distro)
    assert_response :success
  end

  test "should get edit" do
    get edit_distro_url(@distro)
    assert_response :success
  end

  test "should update distro" do
    patch distro_url(@distro), params: { distro: { image: @distro.image, name: @distro.name } }
    assert_redirected_to distro_url(@distro)
  end

  test "should destroy distro" do
    assert_difference("Distro.count", -1) do
      delete distro_url(@distro)
    end

    assert_redirected_to distros_url
  end
end
