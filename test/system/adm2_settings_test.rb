require "application_system_test_case"

class Adm2SettingsTest < ApplicationSystemTestCase
  setup do
    @adm2_setting = adm2_settings(:one)
  end

  test "visiting the index" do
    visit adm2_settings_url
    assert_selector "h1", text: "Adm2 Settings"
  end

  test "creating a Adm2 setting" do
    visit adm2_settings_url
    click_on "New Adm2 Setting"

    check "Adms1" if @adm2_setting.adms1
    check "Adms10" if @adm2_setting.adms10
    check "Adms2" if @adm2_setting.adms2
    check "Adms3" if @adm2_setting.adms3
    check "Adms4" if @adm2_setting.adms4
    check "Adms5" if @adm2_setting.adms5
    check "Adms6" if @adm2_setting.adms6
    check "Adms7" if @adm2_setting.adms7
    check "Adms8" if @adm2_setting.adms8
    check "Adms9" if @adm2_setting.adms9
    click_on "Create Adm2 setting"

    assert_text "Adm2 setting was successfully created"
    click_on "Back"
  end

  test "updating a Adm2 setting" do
    visit adm2_settings_url
    click_on "Edit", match: :first

    check "Adms1" if @adm2_setting.adms1
    check "Adms10" if @adm2_setting.adms10
    check "Adms2" if @adm2_setting.adms2
    check "Adms3" if @adm2_setting.adms3
    check "Adms4" if @adm2_setting.adms4
    check "Adms5" if @adm2_setting.adms5
    check "Adms6" if @adm2_setting.adms6
    check "Adms7" if @adm2_setting.adms7
    check "Adms8" if @adm2_setting.adms8
    check "Adms9" if @adm2_setting.adms9
    click_on "Update Adm2 setting"

    assert_text "Adm2 setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Adm2 setting" do
    visit adm2_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adm2 setting was successfully destroyed"
  end
end
