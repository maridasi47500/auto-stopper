require "test_helper"

class CommandlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commandline = commandlines(:one)
  end

  test "should get index" do
    get commandlines_url
    assert_response :success
  end

  test "should get new" do
    get new_commandline_url
    assert_response :success
  end

  test "should create commandline" do
    assert_difference("Commandline.count") do
      post commandlines_url, params: { commandline: { content: @commandline.content, place_id: @commandline.place_id, title: @commandline.title } }
    end

    assert_redirected_to commandline_url(Commandline.last)
  end

  test "should show commandline" do
    get commandline_url(@commandline)
    assert_response :success
  end

  test "should get edit" do
    get edit_commandline_url(@commandline)
    assert_response :success
  end

  test "should update commandline" do
    patch commandline_url(@commandline), params: { commandline: { content: @commandline.content, place_id: @commandline.place_id, title: @commandline.title } }
    assert_redirected_to commandline_url(@commandline)
  end

  test "should destroy commandline" do
    assert_difference("Commandline.count", -1) do
      delete commandline_url(@commandline)
    end

    assert_redirected_to commandlines_url
  end
end
