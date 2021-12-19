require "application_system_test_case"

class AdmSettingsTest < ApplicationSystemTestCase
  setup do
    @adm_setting = adm_settings(:one)
  end

  test "visiting the index" do
    visit adm_settings_url
    assert_selector "h1", text: "Adm Settings"
  end

  test "creating a Adm setting" do
    visit adm_settings_url
    click_on "New Adm Setting"

    check "Adms1" if @adm_setting.adms1
    check "Adms10" if @adm_setting.adms10
    check "Adms2" if @adm_setting.adms2
    check "Adms3" if @adm_setting.adms3
    check "Adms4" if @adm_setting.adms4
    check "Adms5" if @adm_setting.adms5
    check "Adms6" if @adm_setting.adms6
    check "Adms7" if @adm_setting.adms7
    check "Adms8" if @adm_setting.adms8
    check "Adms9" if @adm_setting.adms9
    click_on "Create Adm setting"

    assert_text "Adm setting was successfully created"
    click_on "Back"
  end

  test "updating a Adm setting" do
    visit adm_settings_url
    click_on "Edit", match: :first

    check "Adms1" if @adm_setting.adms1
    check "Adms10" if @adm_setting.adms10
    check "Adms2" if @adm_setting.adms2
    check "Adms3" if @adm_setting.adms3
    check "Adms4" if @adm_setting.adms4
    check "Adms5" if @adm_setting.adms5
    check "Adms6" if @adm_setting.adms6
    check "Adms7" if @adm_setting.adms7
    check "Adms8" if @adm_setting.adms8
    check "Adms9" if @adm_setting.adms9
    click_on "Update Adm setting"

    assert_text "Adm setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Adm setting" do
    visit adm_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adm setting was successfully destroyed"
  end
end
