require 'test_helper'

class Admins::CafeListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_cafe_lists_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_cafe_lists_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_cafe_lists_edit_url
    assert_response :success
  end

end
