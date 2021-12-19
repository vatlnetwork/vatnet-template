require "test_helper"

class AdmSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adm_setting = adm_settings(:one)
  end

  test "should get index" do
    get adm_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_adm_setting_url
    assert_response :success
  end

  test "should create adm_setting" do
    assert_difference('AdmSetting.count') do
      post adm_settings_url, params: { adm_setting: { adms1: @adm_setting.adms1, adms10: @adm_setting.adms10, adms2: @adm_setting.adms2, adms3: @adm_setting.adms3, adms4: @adm_setting.adms4, adms5: @adm_setting.adms5, adms6: @adm_setting.adms6, adms7: @adm_setting.adms7, adms8: @adm_setting.adms8, adms9: @adm_setting.adms9 } }
    end

    assert_redirected_to adm_setting_url(AdmSetting.last)
  end

  test "should show adm_setting" do
    get adm_setting_url(@adm_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_adm_setting_url(@adm_setting)
    assert_response :success
  end

  test "should update adm_setting" do
    patch adm_setting_url(@adm_setting), params: { adm_setting: { adms1: @adm_setting.adms1, adms10: @adm_setting.adms10, adms2: @adm_setting.adms2, adms3: @adm_setting.adms3, adms4: @adm_setting.adms4, adms5: @adm_setting.adms5, adms6: @adm_setting.adms6, adms7: @adm_setting.adms7, adms8: @adm_setting.adms8, adms9: @adm_setting.adms9 } }
    assert_redirected_to adm_setting_url(@adm_setting)
  end

  test "should destroy adm_setting" do
    assert_difference('AdmSetting.count', -1) do
      delete adm_setting_url(@adm_setting)
    end

    assert_redirected_to adm_settings_url
  end
end
