require "application_system_test_case"

class MyhacksTest < ApplicationSystemTestCase
  setup do
    @myhack = myhacks(:one)
  end

  test "visiting the index" do
    visit myhacks_url
    assert_selector "h1", text: "Myhacks"
  end

  test "should create myhack" do
    visit myhacks_url
    click_on "New myhack"

    fill_in "Content", with: @myhack.content
    fill_in "Title", with: @myhack.title
    fill_in "User", with: @myhack.user_id
    click_on "Create Myhack"

    assert_text "Myhack was successfully created"
    click_on "Back"
  end

  test "should update Myhack" do
    visit myhack_url(@myhack)
    click_on "Edit this myhack", match: :first

    fill_in "Content", with: @myhack.content
    fill_in "Title", with: @myhack.title
    fill_in "User", with: @myhack.user_id
    click_on "Update Myhack"

    assert_text "Myhack was successfully updated"
    click_on "Back"
  end

  test "should destroy Myhack" do
    visit myhack_url(@myhack)
    click_on "Destroy this myhack", match: :first

    assert_text "Myhack was successfully destroyed"
  end
end
