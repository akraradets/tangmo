require "application_system_test_case"

class PlotsTest < ApplicationSystemTestCase
  setup do
    @plot = plots(:one)
  end

  test "visiting the index" do
    visit plots_url
    assert_selector "h1", text: "Plots"
  end

  test "creating a Plot" do
    visit plots_url
    click_on "New Plot"

    fill_in "Addressamphoe", with: @plot.addressAmphoe
    fill_in "Addressmoo", with: @plot.addressMoo
    fill_in "Addressno", with: @plot.addressNo
    fill_in "Addressprovince", with: @plot.addressProvince
    fill_in "Addresstambon", with: @plot.addressTambon
    fill_in "Addresszipcode", with: @plot.addressZipcode
    fill_in "Arearai", with: @plot.areaRai
    fill_in "Breed", with: @plot.breed
    fill_in "Certificate", with: @plot.certificate
    fill_in "Certificatedate", with: @plot.certificateDate
    fill_in "Farmer", with: @plot.farmer_id
    fill_in "Fertilizemanagement", with: @plot.fertilizeManagement
    fill_in "Harvestmanagement", with: @plot.harvestManagement
    fill_in "Harvestperiod", with: @plot.harvestPeriod
    fill_in "Harvestquantity", with: @plot.harvestQuantity
    fill_in "Illnessmanagement", with: @plot.illnessManagement
    fill_in "Lat", with: @plot.lat
    fill_in "Logistic", with: @plot.logistic
    fill_in "Long", with: @plot.long
    fill_in "Plotmanagement", with: @plot.plotManagement
    fill_in "Price", with: @plot.price
    fill_in "Project", with: @plot.project
    fill_in "Sellingchannel", with: @plot.sellingChannel
    fill_in "Treecount", with: @plot.treeCount
    fill_in "Watermanagement", with: @plot.waterManagement
    click_on "Create Plot"

    assert_text "Plot was successfully created"
    click_on "Back"
  end

  test "updating a Plot" do
    visit plots_url
    click_on "Edit", match: :first

    fill_in "Addressamphoe", with: @plot.addressAmphoe
    fill_in "Addressmoo", with: @plot.addressMoo
    fill_in "Addressno", with: @plot.addressNo
    fill_in "Addressprovince", with: @plot.addressProvince
    fill_in "Addresstambon", with: @plot.addressTambon
    fill_in "Addresszipcode", with: @plot.addressZipcode
    fill_in "Arearai", with: @plot.areaRai
    fill_in "Breed", with: @plot.breed
    fill_in "Certificate", with: @plot.certificate
    fill_in "Certificatedate", with: @plot.certificateDate
    fill_in "Farmer", with: @plot.farmer_id
    fill_in "Fertilizemanagement", with: @plot.fertilizeManagement
    fill_in "Harvestmanagement", with: @plot.harvestManagement
    fill_in "Harvestperiod", with: @plot.harvestPeriod
    fill_in "Harvestquantity", with: @plot.harvestQuantity
    fill_in "Illnessmanagement", with: @plot.illnessManagement
    fill_in "Lat", with: @plot.lat
    fill_in "Logistic", with: @plot.logistic
    fill_in "Long", with: @plot.long
    fill_in "Plotmanagement", with: @plot.plotManagement
    fill_in "Price", with: @plot.price
    fill_in "Project", with: @plot.project
    fill_in "Sellingchannel", with: @plot.sellingChannel
    fill_in "Treecount", with: @plot.treeCount
    fill_in "Watermanagement", with: @plot.waterManagement
    click_on "Update Plot"

    assert_text "Plot was successfully updated"
    click_on "Back"
  end

  test "destroying a Plot" do
    visit plots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plot was successfully destroyed"
  end
end
