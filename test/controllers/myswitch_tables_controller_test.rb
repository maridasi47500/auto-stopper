require "test_helper"

class MyswitchTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myswitch_table = myswitch_tables(:one)
  end

  test "should get index" do
    get myswitch_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_myswitch_table_url
    assert_response :success
  end

  test "should create myswitch_table" do
    assert_difference("MyswitchTable.count") do
      post myswitch_tables_url, params: { myswitch_table: { mac: @myswitch_table.mac, port: @myswitch_table.port, switch_id: @myswitch_table.switch_id } }
    end

    assert_redirected_to myswitch_table_url(MyswitchTable.last)
  end

  test "should show myswitch_table" do
    get myswitch_table_url(@myswitch_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_myswitch_table_url(@myswitch_table)
    assert_response :success
  end

  test "should update myswitch_table" do
    patch myswitch_table_url(@myswitch_table), params: { myswitch_table: { mac: @myswitch_table.mac, port: @myswitch_table.port, switch_id: @myswitch_table.switch_id } }
    assert_redirected_to myswitch_table_url(@myswitch_table)
  end

  test "should destroy myswitch_table" do
    assert_difference("MyswitchTable.count", -1) do
      delete myswitch_table_url(@myswitch_table)
    end

    assert_redirected_to myswitch_tables_url
  end
end
