require 'test_helper'

class EventStylesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get event_styles_show_url
    assert_response :success
  end

  test "should get update" do
    get event_styles_update_url
    assert_response :success
  end

  test "should get edit" do
    get event_styles_edit_url
    assert_response :success
  end

  test "should get create" do
    get event_styles_create_url
    assert_response :success
  end

  test "should get new" do
    get event_styles_new_url
    assert_response :success
  end

  test "should get index" do
    get event_styles_index_url
    assert_response :success
  end

  test "should get delete" do
    get event_styles_delete_url
    assert_response :success
  end

end
