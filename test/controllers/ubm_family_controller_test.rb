require "test_helper"

class UbmFamilyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ubm_family_index_url
    assert_response :success
  end

  test "should get parent_enroll" do
    get ubm_family_parent_enroll_url
    assert_response :success
  end

  test "should get child_enroll" do
    get ubm_family_child_enroll_url
    assert_response :success
  end

  test "should get parent_panel" do
    get ubm_family_parent_panel_url
    assert_response :success
  end

  test "should get child_panel" do
    get ubm_family_child_panel_url
    assert_response :success
  end
end
