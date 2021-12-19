require "test_helper"

class DailyCheckoffListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_checkoff_list = daily_checkoff_lists(:one)
  end

  test "should get index" do
    get daily_checkoff_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_checkoff_list_url
    assert_response :success
  end

  test "should create daily_checkoff_list" do
    assert_difference('DailyCheckoffList.count') do
      post daily_checkoff_lists_url, params: { daily_checkoff_list: { name: @daily_checkoff_list.name, parent: @daily_checkoff_list.parent } }
    end

    assert_redirected_to daily_checkoff_list_url(DailyCheckoffList.last)
  end

  test "should show daily_checkoff_list" do
    get daily_checkoff_list_url(@daily_checkoff_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_checkoff_list_url(@daily_checkoff_list)
    assert_response :success
  end

  test "should update daily_checkoff_list" do
    patch daily_checkoff_list_url(@daily_checkoff_list), params: { daily_checkoff_list: { name: @daily_checkoff_list.name, parent: @daily_checkoff_list.parent } }
    assert_redirected_to daily_checkoff_list_url(@daily_checkoff_list)
  end

  test "should destroy daily_checkoff_list" do
    assert_difference('DailyCheckoffList.count', -1) do
      delete daily_checkoff_list_url(@daily_checkoff_list)
    end

    assert_redirected_to daily_checkoff_lists_url
  end
end
