require "application_system_test_case"

class CafeListsTest < ApplicationSystemTestCase
  setup do
    @cafe_list = cafe_lists(:one)
  end

  test "visiting the index" do
    visit cafe_lists_url
    assert_selector "h1", text: "Cafe Lists"
  end

  test "creating a Cafe list" do
    visit cafe_lists_url
    click_on "New Cafe List"

    fill_in "Bean", with: @cafe_list.bean
    fill_in "Location", with: @cafe_list.location
    fill_in "Title", with: @cafe_list.title
    click_on "Create Cafe list"

    assert_text "Cafe list was successfully created"
    click_on "Back"
  end

  test "updating a Cafe list" do
    visit cafe_lists_url
    click_on "Edit", match: :first

    fill_in "Bean", with: @cafe_list.bean
    fill_in "Location", with: @cafe_list.location
    fill_in "Title", with: @cafe_list.title
    click_on "Update Cafe list"

    assert_text "Cafe list was successfully updated"
    click_on "Back"
  end

  test "destroying a Cafe list" do
    visit cafe_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cafe list was successfully destroyed"
  end
end
