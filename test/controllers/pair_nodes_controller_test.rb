require "test_helper"

class PairNodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pair_node = pair_nodes(:one)
  end

  test "should get index" do
    get pair_nodes_url
    assert_response :success
  end

  test "should get new" do
    get new_pair_node_url
    assert_response :success
  end

  test "should create pair_node" do
    assert_difference("PairNode.count") do
      post pair_nodes_url, params: { pair_node: { mac1_id: @pair_node.mac1_id, mac2_id: @pair_node.mac2_id } }
    end

    assert_redirected_to pair_node_url(PairNode.last)
  end

  test "should show pair_node" do
    get pair_node_url(@pair_node)
    assert_response :success
  end

  test "should get edit" do
    get edit_pair_node_url(@pair_node)
    assert_response :success
  end

  test "should update pair_node" do
    patch pair_node_url(@pair_node), params: { pair_node: { mac1_id: @pair_node.mac1_id, mac2_id: @pair_node.mac2_id } }
    assert_redirected_to pair_node_url(@pair_node)
  end

  test "should destroy pair_node" do
    assert_difference("PairNode.count", -1) do
      delete pair_node_url(@pair_node)
    end

    assert_redirected_to pair_nodes_url
  end
end
