require "test_helper"

class PendingCheckoffListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pending_checkoff_list = pending_checkoff_lists(:one)
  end

  test "should get index" do
    get pending_checkoff_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_pending_checkoff_list_url
    assert_response :success
  end

  test "should create pending_checkoff_list" do
    assert_difference('PendingCheckoffList.count') do
      post pending_checkoff_lists_url, params: { pending_checkoff_list: { assigned_by: @pending_checkoff_list.assigned_by, assigned_to: @pending_checkoff_list.assigned_to, name: @pending_checkoff_list.name } }
    end

    assert_redirected_to pending_checkoff_list_url(PendingCheckoffList.last)
  end

  test "should show pending_checkoff_list" do
    get pending_checkoff_list_url(@pending_checkoff_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_pending_checkoff_list_url(@pending_checkoff_list)
    assert_response :success
  end

  test "should update pending_checkoff_list" do
    patch pending_checkoff_list_url(@pending_checkoff_list), params: { pending_checkoff_list: { assigned_by: @pending_checkoff_list.assigned_by, assigned_to: @pending_checkoff_list.assigned_to, name: @pending_checkoff_list.name } }
    assert_redirected_to pending_checkoff_list_url(@pending_checkoff_list)
  end

  test "should destroy pending_checkoff_list" do
    assert_difference('PendingCheckoffList.count', -1) do
      delete pending_checkoff_list_url(@pending_checkoff_list)
    end

    assert_redirected_to pending_checkoff_lists_url
  end
end
