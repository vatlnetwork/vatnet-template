require "application_system_test_case"

class UbmFamilyParentsTest < ApplicationSystemTestCase
  setup do
    @ubm_family_parent = ubm_family_parents(:one)
  end

  test "visiting the index" do
    visit ubm_family_parents_url
    assert_selector "h1", text: "Ubm Family Parents"
  end

  test "creating a Ubm family parent" do
    visit ubm_family_parents_url
    click_on "New Ubm Family Parent"

    fill_in "Email", with: @ubm_family_parent.email
    click_on "Create Ubm family parent"

    assert_text "Ubm family parent was successfully created"
    click_on "Back"
  end

  test "updating a Ubm family parent" do
    visit ubm_family_parents_url
    click_on "Edit", match: :first

    fill_in "Email", with: @ubm_family_parent.email
    click_on "Update Ubm family parent"

    assert_text "Ubm family parent was successfully updated"
    click_on "Back"
  end

  test "destroying a Ubm family parent" do
    visit ubm_family_parents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ubm family parent was successfully destroyed"
  end
end
