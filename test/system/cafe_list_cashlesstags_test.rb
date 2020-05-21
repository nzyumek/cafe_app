require "application_system_test_case"

class CafeListCashlesstagsTest < ApplicationSystemTestCase
  setup do
    @cafe_list_cashlesstag = cafe_list_cashlesstags(:one)
  end

  test "visiting the index" do
    visit cafe_list_cashlesstags_url
    assert_selector "h1", text: "Cafe List Cashlesstags"
  end

  test "creating a Cafe list cashlesstag" do
    visit cafe_list_cashlesstags_url
    click_on "New Cafe List Cashlesstag"

    fill_in "Cafe list", with: @cafe_list_cashlesstag.cafe_list_id
    fill_in "Cashlesstag", with: @cafe_list_cashlesstag.cashlesstag_id
    click_on "Create Cafe list cashlesstag"

    assert_text "Cafe list cashlesstag was successfully created"
    click_on "Back"
  end

  test "updating a Cafe list cashlesstag" do
    visit cafe_list_cashlesstags_url
    click_on "Edit", match: :first

    fill_in "Cafe list", with: @cafe_list_cashlesstag.cafe_list_id
    fill_in "Cashlesstag", with: @cafe_list_cashlesstag.cashlesstag_id
    click_on "Update Cafe list cashlesstag"

    assert_text "Cafe list cashlesstag was successfully updated"
    click_on "Back"
  end

  test "destroying a Cafe list cashlesstag" do
    visit cafe_list_cashlesstags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cafe list cashlesstag was successfully destroyed"
  end
end
