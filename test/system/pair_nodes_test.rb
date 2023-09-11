require "application_system_test_case"

class PairNodesTest < ApplicationSystemTestCase
  setup do
    @pair_node = pair_nodes(:one)
  end

  test "visiting the index" do
    visit pair_nodes_url
    assert_selector "h1", text: "Pair nodes"
  end

  test "should create pair node" do
    visit pair_nodes_url
    click_on "New pair node"

    fill_in "Mac1", with: @pair_node.mac1_id
    fill_in "Mac2", with: @pair_node.mac2_id
    click_on "Create Pair node"

    assert_text "Pair node was successfully created"
    click_on "Back"
  end

  test "should update Pair node" do
    visit pair_node_url(@pair_node)
    click_on "Edit this pair node", match: :first

    fill_in "Mac1", with: @pair_node.mac1_id
    fill_in "Mac2", with: @pair_node.mac2_id
    click_on "Update Pair node"

    assert_text "Pair node was successfully updated"
    click_on "Back"
  end

  test "should destroy Pair node" do
    visit pair_node_url(@pair_node)
    click_on "Destroy this pair node", match: :first

    assert_text "Pair node was successfully destroyed"
  end
end
