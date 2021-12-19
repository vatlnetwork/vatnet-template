require "test_helper"

class LiveConsoleControllerTest < ActionDispatch::IntegrationTest
  test "should get email:string" do
    get live_console_email:string_url
    assert_response :success
  end
end
