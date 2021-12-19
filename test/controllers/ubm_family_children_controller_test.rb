require "test_helper"

class UbmFamilyChildrenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ubm_family_child = ubm_family_children(:one)
  end

  test "should get index" do
    get ubm_family_children_url
    assert_response :success
  end

  test "should get new" do
    get new_ubm_family_child_url
    assert_response :success
  end

  test "should create ubm_family_child" do
    assert_difference('UbmFamilyChild.count') do
      post ubm_family_children_url, params: { ubm_family_child: { email: @ubm_family_child.email, parent_email: @ubm_family_child.parent_email } }
    end

    assert_redirected_to ubm_family_child_url(UbmFamilyChild.last)
  end

  test "should show ubm_family_child" do
    get ubm_family_child_url(@ubm_family_child)
    assert_response :success
  end

  test "should get edit" do
    get edit_ubm_family_child_url(@ubm_family_child)
    assert_response :success
  end

  test "should update ubm_family_child" do
    patch ubm_family_child_url(@ubm_family_child), params: { ubm_family_child: { email: @ubm_family_child.email, parent_email: @ubm_family_child.parent_email } }
    assert_redirected_to ubm_family_child_url(@ubm_family_child)
  end

  test "should destroy ubm_family_child" do
    assert_difference('UbmFamilyChild.count', -1) do
      delete ubm_family_child_url(@ubm_family_child)
    end

    assert_redirected_to ubm_family_children_url
  end
end
