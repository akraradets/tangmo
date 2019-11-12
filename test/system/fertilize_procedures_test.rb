require "application_system_test_case"

class FertilizeProceduresTest < ApplicationSystemTestCase
  setup do
    @fertilize_procedure = fertilize_procedures(:one)
  end

  test "visiting the index" do
    visit fertilize_procedures_url
    assert_selector "h1", text: "Fertilize Procedures"
  end

  test "creating a Fertilize procedure" do
    visit fertilize_procedures_url
    click_on "New Fertilize Procedure"

    fill_in "Name", with: @fertilize_procedure.name
    click_on "Create Fertilize procedure"

    assert_text "Fertilize procedure was successfully created"
    click_on "Back"
  end

  test "updating a Fertilize procedure" do
    visit fertilize_procedures_url
    click_on "Edit", match: :first

    fill_in "Name", with: @fertilize_procedure.name
    click_on "Update Fertilize procedure"

    assert_text "Fertilize procedure was successfully updated"
    click_on "Back"
  end

  test "destroying a Fertilize procedure" do
    visit fertilize_procedures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fertilize procedure was successfully destroyed"
  end
end
