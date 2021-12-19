require "application_system_test_case"

class CheckoffListsTest < ApplicationSystemTestCase
  setup do
    @checkoff_list = checkoff_lists(:one)
  end

  test "visiting the index" do
    visit checkoff_lists_url
    assert_selector "h1", text: "Checkoff Lists"
  end

  test "creating a Checkoff list" do
    visit checkoff_lists_url
    click_on "New Checkoff List"

    fill_in "Assigned by", with: @checkoff_list.assigned_by
    fill_in "Assigned to", with: @checkoff_list.assigned_to
    fill_in "Name", with: @checkoff_list.name
    click_on "Create Checkoff list"

    assert_text "Checkoff list was successfully created"
    click_on "Back"
  end

  test "updating a Checkoff list" do
    visit checkoff_lists_url
    click_on "Edit", match: :first

    fill_in "Assigned by", with: @checkoff_list.assigned_by
    fill_in "Assigned to", with: @checkoff_list.assigned_to
    fill_in "Name", with: @checkoff_list.name
    click_on "Update Checkoff list"

    assert_text "Checkoff list was successfully updated"
    click_on "Back"
  end

  test "destroying a Checkoff list" do
    visit checkoff_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Checkoff list was successfully destroyed"
  end
end
