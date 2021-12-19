require "test_helper"

class AdminSettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_settings_index_url
    assert_response :success
  end
end
