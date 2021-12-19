require "application_system_test_case"

class UbmFamilyChildrenTest < ApplicationSystemTestCase
  setup do
    @ubm_family_child = ubm_family_children(:one)
  end

  test "visiting the index" do
    visit ubm_family_children_url
    assert_selector "h1", text: "Ubm Family Children"
  end

  test "creating a Ubm family child" do
    visit ubm_family_children_url
    click_on "New Ubm Family Child"

    fill_in "Email", with: @ubm_family_child.email
    fill_in "Parent email", with: @ubm_family_child.parent_email
    click_on "Create Ubm family child"

    assert_text "Ubm family child was successfully created"
    click_on "Back"
  end

  test "updating a Ubm family child" do
    visit ubm_family_children_url
    click_on "Edit", match: :first

    fill_in "Email", with: @ubm_family_child.email
    fill_in "Parent email", with: @ubm_family_child.parent_email
    click_on "Update Ubm family child"

    assert_text "Ubm family child was successfully updated"
    click_on "Back"
  end

  test "destroying a Ubm family child" do
    visit ubm_family_children_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ubm family child was successfully destroyed"
  end
end
