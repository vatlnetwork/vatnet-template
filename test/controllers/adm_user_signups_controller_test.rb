require "test_helper"

class AdmUserSignupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adm_user_signup = adm_user_signups(:one)
  end

  test "should get index" do
    get adm_user_signups_url
    assert_response :success
  end

  test "should get new" do
    get new_adm_user_signup_url
    assert_response :success
  end

  test "should create adm_user_signup" do
    assert_difference('AdmUserSignup.count') do
      post adm_user_signups_url, params: { adm_user_signup: { enabled: @adm_user_signup.enabled } }
    end

    assert_redirected_to adm_user_signup_url(AdmUserSignup.last)
  end

  test "should show adm_user_signup" do
    get adm_user_signup_url(@adm_user_signup)
    assert_response :success
  end

  test "should get edit" do
    get edit_adm_user_signup_url(@adm_user_signup)
    assert_response :success
  end

  test "should update adm_user_signup" do
    patch adm_user_signup_url(@adm_user_signup), params: { adm_user_signup: { enabled: @adm_user_signup.enabled } }
    assert_redirected_to adm_user_signup_url(@adm_user_signup)
  end

  test "should destroy adm_user_signup" do
    assert_difference('AdmUserSignup.count', -1) do
      delete adm_user_signup_url(@adm_user_signup)
    end

    assert_redirected_to adm_user_signups_url
  end
end
