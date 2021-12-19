require "test_helper"

class CompleteCheckoffListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complete_checkoff_list = complete_checkoff_lists(:one)
  end

  test "should get index" do
    get complete_checkoff_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_complete_checkoff_list_url
    assert_response :success
  end

  test "should create complete_checkoff_list" do
    assert_difference('CompleteCheckoffList.count') do
      post complete_checkoff_lists_url, params: { complete_checkoff_list: { assigned_by: @complete_checkoff_list.assigned_by, assigned_to: @complete_checkoff_list.assigned_to, name: @complete_checkoff_list.name } }
    end

    assert_redirected_to complete_checkoff_list_url(CompleteCheckoffList.last)
  end

  test "should show complete_checkoff_list" do
    get complete_checkoff_list_url(@complete_checkoff_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_complete_checkoff_list_url(@complete_checkoff_list)
    assert_response :success
  end

  test "should update complete_checkoff_list" do
    patch complete_checkoff_list_url(@complete_checkoff_list), params: { complete_checkoff_list: { assigned_by: @complete_checkoff_list.assigned_by, assigned_to: @complete_checkoff_list.assigned_to, name: @complete_checkoff_list.name } }
    assert_redirected_to complete_checkoff_list_url(@complete_checkoff_list)
  end

  test "should destroy complete_checkoff_list" do
    assert_difference('CompleteCheckoffList.count', -1) do
      delete complete_checkoff_list_url(@complete_checkoff_list)
    end

    assert_redirected_to complete_checkoff_lists_url
  end
end
