require "application_system_test_case"

class AdmUserSignupsTest < ApplicationSystemTestCase
  setup do
    @adm_user_signup = adm_user_signups(:one)
  end

  test "visiting the index" do
    visit adm_user_signups_url
    assert_selector "h1", text: "Adm User Signups"
  end

  test "creating a Adm user signup" do
    visit adm_user_signups_url
    click_on "New Adm User Signup"

    check "Enabled" if @adm_user_signup.enabled
    click_on "Create Adm user signup"

    assert_text "Adm user signup was successfully created"
    click_on "Back"
  end

  test "updating a Adm user signup" do
    visit adm_user_signups_url
    click_on "Edit", match: :first

    check "Enabled" if @adm_user_signup.enabled
    click_on "Update Adm user signup"

    assert_text "Adm user signup was successfully updated"
    click_on "Back"
  end

  test "destroying a Adm user signup" do
    visit adm_user_signups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adm user signup was successfully destroyed"
  end
end
