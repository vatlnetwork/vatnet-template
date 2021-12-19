require "test_helper"

class UbmFamilyParentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ubm_family_parent = ubm_family_parents(:one)
  end

  test "should get index" do
    get ubm_family_parents_url
    assert_response :success
  end

  test "should get new" do
    get new_ubm_family_parent_url
    assert_response :success
  end

  test "should create ubm_family_parent" do
    assert_difference('UbmFamilyParent.count') do
      post ubm_family_parents_url, params: { ubm_family_parent: { email: @ubm_family_parent.email } }
    end

    assert_redirected_to ubm_family_parent_url(UbmFamilyParent.last)
  end

  test "should show ubm_family_parent" do
    get ubm_family_parent_url(@ubm_family_parent)
    assert_response :success
  end

  test "should get edit" do
    get edit_ubm_family_parent_url(@ubm_family_parent)
    assert_response :success
  end

  test "should update ubm_family_parent" do
    patch ubm_family_parent_url(@ubm_family_parent), params: { ubm_family_parent: { email: @ubm_family_parent.email } }
    assert_redirected_to ubm_family_parent_url(@ubm_family_parent)
  end

  test "should destroy ubm_family_parent" do
    assert_difference('UbmFamilyParent.count', -1) do
      delete ubm_family_parent_url(@ubm_family_parent)
    end

    assert_redirected_to ubm_family_parents_url
  end
end
