require "application_system_test_case"

class PendingCheckoffListsTest < ApplicationSystemTestCase
  setup do
    @pending_checkoff_list = pending_checkoff_lists(:one)
  end

  test "visiting the index" do
    visit pending_checkoff_lists_url
    assert_selector "h1", text: "Pending Checkoff Lists"
  end

  test "creating a Pending checkoff list" do
    visit pending_checkoff_lists_url
    click_on "New Pending Checkoff List"

    fill_in "Assigned by", with: @pending_checkoff_list.assigned_by
    fill_in "Assigned to", with: @pending_checkoff_list.assigned_to
    fill_in "Name", with: @pending_checkoff_list.name
    click_on "Create Pending checkoff list"

    assert_text "Pending checkoff list was successfully created"
    click_on "Back"
  end

  test "updating a Pending checkoff list" do
    visit pending_checkoff_lists_url
    click_on "Edit", match: :first

    fill_in "Assigned by", with: @pending_checkoff_list.assigned_by
    fill_in "Assigned to", with: @pending_checkoff_list.assigned_to
    fill_in "Name", with: @pending_checkoff_list.name
    click_on "Update Pending checkoff list"

    assert_text "Pending checkoff list was successfully updated"
    click_on "Back"
  end

  test "destroying a Pending checkoff list" do
    visit pending_checkoff_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pending checkoff list was successfully destroyed"
  end
end
