require "test_helper"

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get posts" do
    get search_posts_url
    assert_response :success
  end

  test "should get notes" do
    get search_notes_url
    assert_response :success
  end

  test "should get friends" do
    get search_friends_url
    assert_response :success
  end
end
