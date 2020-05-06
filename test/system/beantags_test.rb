require "application_system_test_case"

class BeantagsTest < ApplicationSystemTestCase
  setup do
    @beantag = beantags(:one)
  end

  test "visiting the index" do
    visit beantags_url
    assert_selector "h1", text: "Beantags"
  end

  test "creating a Beantag" do
    visit beantags_url
    click_on "New Beantag"

    fill_in "Cafe list", with: @beantag.cafe_list_id
    fill_in "Name", with: @beantag.name
    click_on "Create Beantag"

    assert_text "Beantag was successfully created"
    click_on "Back"
  end

  test "updating a Beantag" do
    visit beantags_url
    click_on "Edit", match: :first

    fill_in "Cafe list", with: @beantag.cafe_list_id
    fill_in "Name", with: @beantag.name
    click_on "Update Beantag"

    assert_text "Beantag was successfully updated"
    click_on "Back"
  end

  test "destroying a Beantag" do
    visit beantags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beantag was successfully destroyed"
  end
end
