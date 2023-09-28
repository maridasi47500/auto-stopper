require "test_helper"

class MyhacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myhack = myhacks(:one)
  end

  test "should get index" do
    get myhacks_url
    assert_response :success
  end

  test "should get new" do
    get new_myhack_url
    assert_response :success
  end

  test "should create myhack" do
    assert_difference("Myhack.count") do
      post myhacks_url, params: { myhack: { content: @myhack.content, title: @myhack.title, user_id: @myhack.user_id } }
    end

    assert_redirected_to myhack_url(Myhack.last)
  end

  test "should show myhack" do
    get myhack_url(@myhack)
    assert_response :success
  end

  test "should get edit" do
    get edit_myhack_url(@myhack)
    assert_response :success
  end

  test "should update myhack" do
    patch myhack_url(@myhack), params: { myhack: { content: @myhack.content, title: @myhack.title, user_id: @myhack.user_id } }
    assert_redirected_to myhack_url(@myhack)
  end

  test "should destroy myhack" do
    assert_difference("Myhack.count", -1) do
      delete myhack_url(@myhack)
    end

    assert_redirected_to myhacks_url
  end
end
