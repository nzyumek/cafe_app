require 'test_helper'

class CafeListCashlesstagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cafe_list_cashlesstag = cafe_list_cashlesstags(:one)
  end

  test "should get index" do
    get cafe_list_cashlesstags_url
    assert_response :success
  end

  test "should get new" do
    get new_cafe_list_cashlesstag_url
    assert_response :success
  end

  test "should create cafe_list_cashlesstag" do
    assert_difference('CafeListCashlesstag.count') do
      post cafe_list_cashlesstags_url, params: { cafe_list_cashlesstag: { cafe_list_id: @cafe_list_cashlesstag.cafe_list_id, cashlesstag_id: @cafe_list_cashlesstag.cashlesstag_id } }
    end

    assert_redirected_to cafe_list_cashlesstag_url(CafeListCashlesstag.last)
  end

  test "should show cafe_list_cashlesstag" do
    get cafe_list_cashlesstag_url(@cafe_list_cashlesstag)
    assert_response :success
  end

  test "should get edit" do
    get edit_cafe_list_cashlesstag_url(@cafe_list_cashlesstag)
    assert_response :success
  end

  test "should update cafe_list_cashlesstag" do
    patch cafe_list_cashlesstag_url(@cafe_list_cashlesstag), params: { cafe_list_cashlesstag: { cafe_list_id: @cafe_list_cashlesstag.cafe_list_id, cashlesstag_id: @cafe_list_cashlesstag.cashlesstag_id } }
    assert_redirected_to cafe_list_cashlesstag_url(@cafe_list_cashlesstag)
  end

  test "should destroy cafe_list_cashlesstag" do
    assert_difference('CafeListCashlesstag.count', -1) do
      delete cafe_list_cashlesstag_url(@cafe_list_cashlesstag)
    end

    assert_redirected_to cafe_list_cashlesstags_url
  end
end
