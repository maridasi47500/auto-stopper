require "test_helper"

class MyscriptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myscript = myscripts(:one)
  end

  test "should get index" do
    get myscripts_url
    assert_response :success
  end

  test "should get new" do
    get new_myscript_url
    assert_response :success
  end

  test "should create myscript" do
    assert_difference("Myscript.count") do
      post myscripts_url, params: { myscript: { content: @myscript.content, description: @myscript.description, title: @myscript.title, user_id: @myscript.user_id } }
    end

    assert_redirected_to myscript_url(Myscript.last)
  end

  test "should show myscript" do
    get myscript_url(@myscript)
    assert_response :success
  end

  test "should get edit" do
    get edit_myscript_url(@myscript)
    assert_response :success
  end

  test "should update myscript" do
    patch myscript_url(@myscript), params: { myscript: { content: @myscript.content, description: @myscript.description, title: @myscript.title, user_id: @myscript.user_id } }
    assert_redirected_to myscript_url(@myscript)
  end

  test "should destroy myscript" do
    assert_difference("Myscript.count", -1) do
      delete myscript_url(@myscript)
    end

    assert_redirected_to myscripts_url
  end
end
