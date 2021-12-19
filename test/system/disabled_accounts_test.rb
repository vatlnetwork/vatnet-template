require "application_system_test_case"

class DisabledAccountsTest < ApplicationSystemTestCase
  setup do
    @disabled_account = disabled_accounts(:one)
  end

  test "visiting the index" do
    visit disabled_accounts_url
    assert_selector "h1", text: "Disabled Accounts"
  end

  test "creating a Disabled account" do
    visit disabled_accounts_url
    click_on "New Disabled Account"

    fill_in "Email", with: @disabled_account.email
    fill_in "User", with: @disabled_account.user_id
    click_on "Create Disabled account"

    assert_text "Disabled account was successfully created"
    click_on "Back"
  end

  test "updating a Disabled account" do
    visit disabled_accounts_url
    click_on "Edit", match: :first

    fill_in "Email", with: @disabled_account.email
    fill_in "User", with: @disabled_account.user_id
    click_on "Update Disabled account"

    assert_text "Disabled account was successfully updated"
    click_on "Back"
  end

  test "destroying a Disabled account" do
    visit disabled_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disabled account was successfully destroyed"
  end
end
