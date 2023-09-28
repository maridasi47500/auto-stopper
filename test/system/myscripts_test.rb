require "application_system_test_case"

class MyscriptsTest < ApplicationSystemTestCase
  setup do
    @myscript = myscripts(:one)
  end

  test "visiting the index" do
    visit myscripts_url
    assert_selector "h1", text: "Myscripts"
  end

  test "should create myscript" do
    visit myscripts_url
    click_on "New myscript"

    fill_in "Content", with: @myscript.content
    fill_in "Description", with: @myscript.description
    fill_in "Title", with: @myscript.title
    fill_in "User", with: @myscript.user_id
    click_on "Create Myscript"

    assert_text "Myscript was successfully created"
    click_on "Back"
  end

  test "should update Myscript" do
    visit myscript_url(@myscript)
    click_on "Edit this myscript", match: :first

    fill_in "Content", with: @myscript.content
    fill_in "Description", with: @myscript.description
    fill_in "Title", with: @myscript.title
    fill_in "User", with: @myscript.user_id
    click_on "Update Myscript"

    assert_text "Myscript was successfully updated"
    click_on "Back"
  end

  test "should destroy Myscript" do
    visit myscript_url(@myscript)
    click_on "Destroy this myscript", match: :first

    assert_text "Myscript was successfully destroyed"
  end
end
