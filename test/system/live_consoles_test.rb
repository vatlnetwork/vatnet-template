require "application_system_test_case"

class LiveConsolesTest < ApplicationSystemTestCase
  setup do
    @live_console = live_consoles(:one)
  end

  test "visiting the index" do
    visit live_consoles_url
    assert_selector "h1", text: "Live Consoles"
  end

  test "creating a Live console" do
    visit live_consoles_url
    click_on "New Live Console"

    fill_in "Email", with: @live_console.email
    click_on "Create Live console"

    assert_text "Live console was successfully created"
    click_on "Back"
  end

  test "updating a Live console" do
    visit live_consoles_url
    click_on "Edit", match: :first

    fill_in "Email", with: @live_console.email
    click_on "Update Live console"

    assert_text "Live console was successfully updated"
    click_on "Back"
  end

  test "destroying a Live console" do
    visit live_consoles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Live console was successfully destroyed"
  end
end
