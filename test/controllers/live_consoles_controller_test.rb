require "test_helper"

class LiveConsolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @live_console = live_consoles(:one)
  end

  test "should get index" do
    get live_consoles_url
    assert_response :success
  end

  test "should get new" do
    get new_live_console_url
    assert_response :success
  end

  test "should create live_console" do
    assert_difference('LiveConsole.count') do
      post live_consoles_url, params: { live_console: { email: @live_console.email } }
    end

    assert_redirected_to live_console_url(LiveConsole.last)
  end

  test "should show live_console" do
    get live_console_url(@live_console)
    assert_response :success
  end

  test "should get edit" do
    get edit_live_console_url(@live_console)
    assert_response :success
  end

  test "should update live_console" do
    patch live_console_url(@live_console), params: { live_console: { email: @live_console.email } }
    assert_redirected_to live_console_url(@live_console)
  end

  test "should destroy live_console" do
    assert_difference('LiveConsole.count', -1) do
      delete live_console_url(@live_console)
    end

    assert_redirected_to live_consoles_url
  end
end
