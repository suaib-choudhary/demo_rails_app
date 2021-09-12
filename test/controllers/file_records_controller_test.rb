require 'test_helper'

class FileRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get file_records_index_url
    assert_response :success
  end

  test "should get new" do
    get file_records_new_url
    assert_response :success
  end

  test "should get create" do
    get file_records_create_url
    assert_response :success
  end

  test "should get edit" do
    get file_records_edit_url
    assert_response :success
  end

  test "should get show" do
    get file_records_show_url
    assert_response :success
  end

  test "should get update" do
    get file_records_update_url
    assert_response :success
  end

  test "should get destroy" do
    get file_records_destroy_url
    assert_response :success
  end

end
