require "application_system_test_case"

class PlotAddressesTest < ApplicationSystemTestCase
  setup do
    @plot_address = plot_addresses(:one)
  end

  test "visiting the index" do
    visit plot_addresses_url
    assert_selector "h1", text: "Plot Addresses"
  end

  test "creating a Plot address" do
    visit plot_addresses_url
    click_on "New Plot Address"

    fill_in "Amphoe", with: @plot_address.amphoe
    fill_in "Houseno", with: @plot_address.houseNo
    fill_in "Lat", with: @plot_address.lat
    fill_in "Long", with: @plot_address.long
    fill_in "Moo", with: @plot_address.moo
    fill_in "Plot", with: @plot_address.plot_id
    fill_in "Province", with: @plot_address.province
    fill_in "Tambon", with: @plot_address.tambon
    fill_in "Zipcode", with: @plot_address.zipcode
    click_on "Create Plot address"

    assert_text "Plot address was successfully created"
    click_on "Back"
  end

  test "updating a Plot address" do
    visit plot_addresses_url
    click_on "Edit", match: :first

    fill_in "Amphoe", with: @plot_address.amphoe
    fill_in "Houseno", with: @plot_address.houseNo
    fill_in "Lat", with: @plot_address.lat
    fill_in "Long", with: @plot_address.long
    fill_in "Moo", with: @plot_address.moo
    fill_in "Plot", with: @plot_address.plot_id
    fill_in "Province", with: @plot_address.province
    fill_in "Tambon", with: @plot_address.tambon
    fill_in "Zipcode", with: @plot_address.zipcode
    click_on "Update Plot address"

    assert_text "Plot address was successfully updated"
    click_on "Back"
  end

  test "destroying a Plot address" do
    visit plot_addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plot address was successfully destroyed"
  end
end
