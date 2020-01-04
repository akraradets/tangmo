require "application_system_test_case"

class FarmerAddressesTest < ApplicationSystemTestCase
  setup do
    @farmer_address = farmer_addresses(:one)
  end

  test "visiting the index" do
    visit farmer_addresses_url
    assert_selector "h1", text: "Farmer Addresses"
  end

  test "creating a Farmer address" do
    visit farmer_addresses_url
    click_on "New Farmer Address"

    fill_in "Amphoe", with: @farmer_address.amphoe
    fill_in "Farmer", with: @farmer_address.farmer_id
    fill_in "Houseno", with: @farmer_address.houseNo
    fill_in "Moo", with: @farmer_address.moo
    fill_in "Province", with: @farmer_address.province
    fill_in "Tambon", with: @farmer_address.tambon
    fill_in "Zipcode", with: @farmer_address.zipcode
    click_on "Create Farmer address"

    assert_text "Farmer address was successfully created"
    click_on "Back"
  end

  test "updating a Farmer address" do
    visit farmer_addresses_url
    click_on "Edit", match: :first

    fill_in "Amphoe", with: @farmer_address.amphoe
    fill_in "Farmer", with: @farmer_address.farmer_id
    fill_in "Houseno", with: @farmer_address.houseNo
    fill_in "Moo", with: @farmer_address.moo
    fill_in "Province", with: @farmer_address.province
    fill_in "Tambon", with: @farmer_address.tambon
    fill_in "Zipcode", with: @farmer_address.zipcode
    click_on "Update Farmer address"

    assert_text "Farmer address was successfully updated"
    click_on "Back"
  end

  test "destroying a Farmer address" do
    visit farmer_addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Farmer address was successfully destroyed"
  end
end
