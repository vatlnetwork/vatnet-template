require "application_system_test_case"

class DevDbsTest < ApplicationSystemTestCase
  setup do
    @dev_db = dev_dbs(:one)
  end

  test "visiting the index" do
    visit dev_dbs_url
    assert_selector "h1", text: "Dev Dbs"
  end

  test "creating a Dev db" do
    visit dev_dbs_url
    click_on "New Dev Db"

    fill_in "Email", with: @dev_db.email
    click_on "Create Dev db"

    assert_text "Dev db was successfully created"
    click_on "Back"
  end

  test "updating a Dev db" do
    visit dev_dbs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @dev_db.email
    click_on "Update Dev db"

    assert_text "Dev db was successfully updated"
    click_on "Back"
  end

  test "destroying a Dev db" do
    visit dev_dbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dev db was successfully destroyed"
  end
end
