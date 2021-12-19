require "application_system_test_case"

class CompleteCheckoffListsTest < ApplicationSystemTestCase
  setup do
    @complete_checkoff_list = complete_checkoff_lists(:one)
  end

  test "visiting the index" do
    visit complete_checkoff_lists_url
    assert_selector "h1", text: "Complete Checkoff Lists"
  end

  test "creating a Complete checkoff list" do
    visit complete_checkoff_lists_url
    click_on "New Complete Checkoff List"

    fill_in "Assigned by", with: @complete_checkoff_list.assigned_by
    fill_in "Assigned to", with: @complete_checkoff_list.assigned_to
    fill_in "Name", with: @complete_checkoff_list.name
    click_on "Create Complete checkoff list"

    assert_text "Complete checkoff list was successfully created"
    click_on "Back"
  end

  test "updating a Complete checkoff list" do
    visit complete_checkoff_lists_url
    click_on "Edit", match: :first

    fill_in "Assigned by", with: @complete_checkoff_list.assigned_by
    fill_in "Assigned to", with: @complete_checkoff_list.assigned_to
    fill_in "Name", with: @complete_checkoff_list.name
    click_on "Update Complete checkoff list"

    assert_text "Complete checkoff list was successfully updated"
    click_on "Back"
  end

  test "destroying a Complete checkoff list" do
    visit complete_checkoff_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complete checkoff list was successfully destroyed"
  end
end
