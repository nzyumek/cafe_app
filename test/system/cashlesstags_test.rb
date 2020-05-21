require "application_system_test_case"

class CashlesstagsTest < ApplicationSystemTestCase
  setup do
    @cashlesstag = cashlesstags(:one)
  end

  test "visiting the index" do
    visit cashlesstags_url
    assert_selector "h1", text: "Cashlesstags"
  end

  test "creating a Cashlesstag" do
    visit cashlesstags_url
    click_on "New Cashlesstag"

    fill_in "Name", with: @cashlesstag.name
    click_on "Create Cashlesstag"

    assert_text "Cashlesstag was successfully created"
    click_on "Back"
  end

  test "updating a Cashlesstag" do
    visit cashlesstags_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cashlesstag.name
    click_on "Update Cashlesstag"

    assert_text "Cashlesstag was successfully updated"
    click_on "Back"
  end

  test "destroying a Cashlesstag" do
    visit cashlesstags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cashlesstag was successfully destroyed"
  end
end
