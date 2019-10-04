require "application_system_test_case"

class FarmersTest < ApplicationSystemTestCase
  setup do
    @farmer = farmers(:one)
  end

  test "visiting the index" do
    visit farmers_url
    assert_selector "h1", text: "Farmers"
  end

  test "creating a Farmer" do
    visit farmers_url
    click_on "New Farmer"

    fill_in "Addressamphoe", with: @farmer.addressAmphoe
    fill_in "Addressmoo", with: @farmer.addressMoo
    fill_in "Addressno", with: @farmer.addressNo
    fill_in "Addressprovince", with: @farmer.addressProvince
    fill_in "Addresstambon", with: @farmer.addressTambon
    fill_in "Addresszipcode", with: @farmer.addressZipcode
    fill_in "Dateofbirth", with: @farmer.dateOfBirth
    fill_in "Email", with: @farmer.email
    fill_in "Facebook", with: @farmer.facebook
    fill_in "Firstname", with: @farmer.firstName
    fill_in "Lastname", with: @farmer.lastName
    fill_in "Line", with: @farmer.line
    fill_in "Organization", with: @farmer.organization_id
    fill_in "Phoneno", with: @farmer.phoneNo
    click_on "Create Farmer"

    assert_text "Farmer was successfully created"
    click_on "Back"
  end

  test "updating a Farmer" do
    visit farmers_url
    click_on "Edit", match: :first

    fill_in "Addressamphoe", with: @farmer.addressAmphoe
    fill_in "Addressmoo", with: @farmer.addressMoo
    fill_in "Addressno", with: @farmer.addressNo
    fill_in "Addressprovince", with: @farmer.addressProvince
    fill_in "Addresstambon", with: @farmer.addressTambon
    fill_in "Addresszipcode", with: @farmer.addressZipcode
    fill_in "Dateofbirth", with: @farmer.dateOfBirth
    fill_in "Email", with: @farmer.email
    fill_in "Facebook", with: @farmer.facebook
    fill_in "Firstname", with: @farmer.firstName
    fill_in "Lastname", with: @farmer.lastName
    fill_in "Line", with: @farmer.line
    fill_in "Organization", with: @farmer.organization_id
    fill_in "Phoneno", with: @farmer.phoneNo
    click_on "Update Farmer"

    assert_text "Farmer was successfully updated"
    click_on "Back"
  end

  test "destroying a Farmer" do
    visit farmers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Farmer was successfully destroyed"
  end
end
