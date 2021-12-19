require "test_helper"

class Adm2SettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adm2_setting = adm2_settings(:one)
  end

  test "should get index" do
    get adm2_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_adm2_setting_url
    assert_response :success
  end

  test "should create adm2_setting" do
    assert_difference('Adm2Setting.count') do
      post adm2_settings_url, params: { adm2_setting: { adms1: @adm2_setting.adms1, adms10: @adm2_setting.adms10, adms2: @adm2_setting.adms2, adms3: @adm2_setting.adms3, adms4: @adm2_setting.adms4, adms5: @adm2_setting.adms5, adms6: @adm2_setting.adms6, adms7: @adm2_setting.adms7, adms8: @adm2_setting.adms8, adms9: @adm2_setting.adms9 } }
    end

    assert_redirected_to adm2_setting_url(Adm2Setting.last)
  end

  test "should show adm2_setting" do
    get adm2_setting_url(@adm2_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_adm2_setting_url(@adm2_setting)
    assert_response :success
  end

  test "should update adm2_setting" do
    patch adm2_setting_url(@adm2_setting), params: { adm2_setting: { adms1: @adm2_setting.adms1, adms10: @adm2_setting.adms10, adms2: @adm2_setting.adms2, adms3: @adm2_setting.adms3, adms4: @adm2_setting.adms4, adms5: @adm2_setting.adms5, adms6: @adm2_setting.adms6, adms7: @adm2_setting.adms7, adms8: @adm2_setting.adms8, adms9: @adm2_setting.adms9 } }
    assert_redirected_to adm2_setting_url(@adm2_setting)
  end

  test "should destroy adm2_setting" do
    assert_difference('Adm2Setting.count', -1) do
      delete adm2_setting_url(@adm2_setting)
    end

    assert_redirected_to adm2_settings_url
  end
end
