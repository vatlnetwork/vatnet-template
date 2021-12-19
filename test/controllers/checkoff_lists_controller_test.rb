require "test_helper"

class CheckoffListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checkoff_list = checkoff_lists(:one)
  end

  test "should get index" do
    get checkoff_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_checkoff_list_url
    assert_response :success
  end

  test "should create checkoff_list" do
    assert_difference('CheckoffList.count') do
      post checkoff_lists_url, params: { checkoff_list: { assigned_by: @checkoff_list.assigned_by, assigned_to: @checkoff_list.assigned_to, name: @checkoff_list.name } }
    end

    assert_redirected_to checkoff_list_url(CheckoffList.last)
  end

  test "should show checkoff_list" do
    get checkoff_list_url(@checkoff_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_checkoff_list_url(@checkoff_list)
    assert_response :success
  end

  test "should update checkoff_list" do
    patch checkoff_list_url(@checkoff_list), params: { checkoff_list: { assigned_by: @checkoff_list.assigned_by, assigned_to: @checkoff_list.assigned_to, name: @checkoff_list.name } }
    assert_redirected_to checkoff_list_url(@checkoff_list)
  end

  test "should destroy checkoff_list" do
    assert_difference('CheckoffList.count', -1) do
      delete checkoff_list_url(@checkoff_list)
    end

    assert_redirected_to checkoff_lists_url
  end
end
