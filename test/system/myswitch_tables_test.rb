require "application_system_test_case"

class MyswitchTablesTest < ApplicationSystemTestCase
  setup do
    @myswitch_table = myswitch_tables(:one)
  end

  test "visiting the index" do
    visit myswitch_tables_url
    assert_selector "h1", text: "Myswitch tables"
  end

  test "should create myswitch table" do
    visit myswitch_tables_url
    click_on "New myswitch table"

    fill_in "Mac", with: @myswitch_table.mac
    fill_in "Port", with: @myswitch_table.port
    fill_in "Switch", with: @myswitch_table.switch_id
    click_on "Create Myswitch table"

    assert_text "Myswitch table was successfully created"
    click_on "Back"
  end

  test "should update Myswitch table" do
    visit myswitch_table_url(@myswitch_table)
    click_on "Edit this myswitch table", match: :first

    fill_in "Mac", with: @myswitch_table.mac
    fill_in "Port", with: @myswitch_table.port
    fill_in "Switch", with: @myswitch_table.switch_id
    click_on "Update Myswitch table"

    assert_text "Myswitch table was successfully updated"
    click_on "Back"
  end

  test "should destroy Myswitch table" do
    visit myswitch_table_url(@myswitch_table)
    click_on "Destroy this myswitch table", match: :first

    assert_text "Myswitch table was successfully destroyed"
  end
end
