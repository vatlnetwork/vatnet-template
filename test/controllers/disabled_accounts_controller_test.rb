require "test_helper"

class DisabledAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disabled_account = disabled_accounts(:one)
  end

  test "should get index" do
    get disabled_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_disabled_account_url
    assert_response :success
  end

  test "should create disabled_account" do
    assert_difference('DisabledAccount.count') do
      post disabled_accounts_url, params: { disabled_account: { email: @disabled_account.email, user_id: @disabled_account.user_id } }
    end

    assert_redirected_to disabled_account_url(DisabledAccount.last)
  end

  test "should show disabled_account" do
    get disabled_account_url(@disabled_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_disabled_account_url(@disabled_account)
    assert_response :success
  end

  test "should update disabled_account" do
    patch disabled_account_url(@disabled_account), params: { disabled_account: { email: @disabled_account.email, user_id: @disabled_account.user_id } }
    assert_redirected_to disabled_account_url(@disabled_account)
  end

  test "should destroy disabled_account" do
    assert_difference('DisabledAccount.count', -1) do
      delete disabled_account_url(@disabled_account)
    end

    assert_redirected_to disabled_accounts_url
  end
end
