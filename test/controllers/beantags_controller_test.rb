require 'test_helper'

class BeantagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beantag = beantags(:one)
  end

  test "should get index" do
    get beantags_url
    assert_response :success
  end

  test "should get new" do
    get new_beantag_url
    assert_response :success
  end

  test "should create beantag" do
    assert_difference('Beantag.count') do
      post beantags_url, params: { beantag: { info: @beantag.info, name: @beantag.name } }
    end

    assert_redirected_to beantag_url(Beantag.last)
  end

  test "should show beantag" do
    get beantag_url(@beantag)
    assert_response :success
  end

  test "should get edit" do
    get edit_beantag_url(@beantag)
    assert_response :success
  end

  test "should update beantag" do
    patch beantag_url(@beantag), params: { beantag: { info: @beantag.info, name: @beantag.name } }
    assert_redirected_to beantag_url(@beantag)
  end

  test "should destroy beantag" do
    assert_difference('Beantag.count', -1) do
      delete beantag_url(@beantag)
    end

    assert_redirected_to beantags_url
  end
end
