require "test_helper"

class ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get disabled_account_access" do
    get errors_disabled_account_access_url
    assert_response :success
  end

  test "should get admins_access" do
    get errors_admins_access_url
    assert_response :success
  end

  test "should get user_list_access" do
    get errors_user_list_access_url
    assert_response :success
  end
end
