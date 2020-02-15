require 'test_helper'

class CafeListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cafe_list = cafe_lists(:one)
  end

  test "should get index" do
    get cafe_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_cafe_list_url
    assert_response :success
  end

  test "should create cafe_list" do
    assert_difference('CafeList.count') do
      post cafe_lists_url, params: { cafe_list: { bean: @cafe_list.bean, location: @cafe_list.location, title: @cafe_list.title } }
    end

    assert_redirected_to cafe_list_url(CafeList.last)
  end

  test "should show cafe_list" do
    get cafe_list_url(@cafe_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_cafe_list_url(@cafe_list)
    assert_response :success
  end

  test "should update cafe_list" do
    patch cafe_list_url(@cafe_list), params: { cafe_list: { bean: @cafe_list.bean, location: @cafe_list.location, title: @cafe_list.title } }
    assert_redirected_to cafe_list_url(@cafe_list)
  end

  test "should destroy cafe_list" do
    assert_difference('CafeList.count', -1) do
      delete cafe_list_url(@cafe_list)
    end

    assert_redirected_to cafe_lists_url
  end
end
