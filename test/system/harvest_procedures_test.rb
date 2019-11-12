require "application_system_test_case"

class HarvestProceduresTest < ApplicationSystemTestCase
  setup do
    @harvest_procedure = harvest_procedures(:one)
  end

  test "visiting the index" do
    visit harvest_procedures_url
    assert_selector "h1", text: "Harvest Procedures"
  end

  test "creating a Harvest procedure" do
    visit harvest_procedures_url
    click_on "New Harvest Procedure"

    fill_in "Name", with: @harvest_procedure.name
    click_on "Create Harvest procedure"

    assert_text "Harvest procedure was successfully created"
    click_on "Back"
  end

  test "updating a Harvest procedure" do
    visit harvest_procedures_url
    click_on "Edit", match: :first

    fill_in "Name", with: @harvest_procedure.name
    click_on "Update Harvest procedure"

    assert_text "Harvest procedure was successfully updated"
    click_on "Back"
  end

  test "destroying a Harvest procedure" do
    visit harvest_procedures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Harvest procedure was successfully destroyed"
  end
end
