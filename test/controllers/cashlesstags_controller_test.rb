require 'test_helper'

class CashlesstagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cashlesstag = cashlesstags(:one)
  end

  test "should get index" do
    get cashlesstags_url
    assert_response :success
  end

  test "should get new" do
    get new_cashlesstag_url
    assert_response :success
  end

  test "should create cashlesstag" do
    assert_difference('Cashlesstag.count') do
      post cashlesstags_url, params: { cashlesstag: { name: @cashlesstag.name } }
    end

    assert_redirected_to cashlesstag_url(Cashlesstag.last)
  end

  test "should show cashlesstag" do
    get cashlesstag_url(@cashlesstag)
    assert_response :success
  end

  test "should get edit" do
    get edit_cashlesstag_url(@cashlesstag)
    assert_response :success
  end

  test "should update cashlesstag" do
    patch cashlesstag_url(@cashlesstag), params: { cashlesstag: { name: @cashlesstag.name } }
    assert_redirected_to cashlesstag_url(@cashlesstag)
  end

  test "should destroy cashlesstag" do
    assert_difference('Cashlesstag.count', -1) do
      delete cashlesstag_url(@cashlesstag)
    end

    assert_redirected_to cashlesstags_url
  end
end
