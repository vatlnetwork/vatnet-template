require "application_system_test_case"

class DailyCheckoffListsTest < ApplicationSystemTestCase
  setup do
    @daily_checkoff_list = daily_checkoff_lists(:one)
  end

  test "visiting the index" do
    visit daily_checkoff_lists_url
    assert_selector "h1", text: "Daily Checkoff Lists"
  end

  test "creating a Daily checkoff list" do
    visit daily_checkoff_lists_url
    click_on "New Daily Checkoff List"

    fill_in "Name", with: @daily_checkoff_list.name
    fill_in "Parent", with: @daily_checkoff_list.parent
    click_on "Create Daily checkoff list"

    assert_text "Daily checkoff list was successfully created"
    click_on "Back"
  end

  test "updating a Daily checkoff list" do
    visit daily_checkoff_lists_url
    click_on "Edit", match: :first

    fill_in "Name", with: @daily_checkoff_list.name
    fill_in "Parent", with: @daily_checkoff_list.parent
    click_on "Update Daily checkoff list"

    assert_text "Daily checkoff list was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily checkoff list" do
    visit daily_checkoff_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily checkoff list was successfully destroyed"
  end
end
