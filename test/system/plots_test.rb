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
    fill_in "Certificate", with: @plot.certificate_id
    fill_in "Farmer", with: @plot.farmer_id
    fill_in "Fertilizeprocedure", with: @plot.fertilizeProcedure
    fill_in "Harvestperiod", with: @plot.harvestPeriod
    fill_in "Harvestprocedure", with: @plot.harvestProcedure
    fill_in "Harvestquantity", with: @plot.harvestQuantity
    fill_in "Issuedate", with: @plot.issueDate
    fill_in "Lat", with: @plot.lat
    fill_in "Logistic", with: @plot.logistic
    fill_in "Long", with: @plot.long
    fill_in "Market", with: @plot.market
    fill_in "Plantdate", with: @plot.plantDate
    fill_in "Policy", with: @plot.policy
    fill_in "Price", with: @plot.price
    fill_in "Treenumber", with: @plot.treeNumber
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
    fill_in "Certificate", with: @plot.certificate_id
    fill_in "Farmer", with: @plot.farmer_id
    fill_in "Fertilizeprocedure", with: @plot.fertilizeProcedure
    fill_in "Harvestperiod", with: @plot.harvestPeriod
    fill_in "Harvestprocedure", with: @plot.harvestProcedure
    fill_in "Harvestquantity", with: @plot.harvestQuantity
    fill_in "Issuedate", with: @plot.issueDate
    fill_in "Lat", with: @plot.lat
    fill_in "Logistic", with: @plot.logistic
    fill_in "Long", with: @plot.long
    fill_in "Market", with: @plot.market
    fill_in "Plantdate", with: @plot.plantDate
    fill_in "Policy", with: @plot.policy
    fill_in "Price", with: @plot.price
    fill_in "Treenumber", with: @plot.treeNumber
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
