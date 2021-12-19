require "test_helper"

class DevDbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dev_db = dev_dbs(:one)
  end

  test "should get index" do
    get dev_dbs_url
    assert_response :success
  end

  test "should get new" do
    get new_dev_db_url
    assert_response :success
  end

  test "should create dev_db" do
    assert_difference('DevDb.count') do
      post dev_dbs_url, params: { dev_db: { email: @dev_db.email } }
    end

    assert_redirected_to dev_db_url(DevDb.last)
  end

  test "should show dev_db" do
    get dev_db_url(@dev_db)
    assert_response :success
  end

  test "should get edit" do
    get edit_dev_db_url(@dev_db)
    assert_response :success
  end

  test "should update dev_db" do
    patch dev_db_url(@dev_db), params: { dev_db: { email: @dev_db.email } }
    assert_redirected_to dev_db_url(@dev_db)
  end

  test "should destroy dev_db" do
    assert_difference('DevDb.count', -1) do
      delete dev_db_url(@dev_db)
    end

    assert_redirected_to dev_dbs_url
  end
end
