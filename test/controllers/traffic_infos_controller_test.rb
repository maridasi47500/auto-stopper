require "test_helper"

class TrafficInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @traffic_info = traffic_infos(:one)
  end

  test "should get index" do
    get traffic_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_traffic_info_url
    assert_response :success
  end

  test "should create traffic_info" do
    assert_difference("TrafficInfo.count") do
      post traffic_infos_url, params: { traffic_info: { destination_id: @traffic_info.destination_id, source_id: @traffic_info.source_id, time: @traffic_info.time } }
    end

    assert_redirected_to traffic_info_url(TrafficInfo.last)
  end

  test "should show traffic_info" do
    get traffic_info_url(@traffic_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_traffic_info_url(@traffic_info)
    assert_response :success
  end

  test "should update traffic_info" do
    patch traffic_info_url(@traffic_info), params: { traffic_info: { destination_id: @traffic_info.destination_id, source_id: @traffic_info.source_id, time: @traffic_info.time } }
    assert_redirected_to traffic_info_url(@traffic_info)
  end

  test "should destroy traffic_info" do
    assert_difference("TrafficInfo.count", -1) do
      delete traffic_info_url(@traffic_info)
    end

    assert_redirected_to traffic_infos_url
  end
end
