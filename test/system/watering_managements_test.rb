require "application_system_test_case"

class WateringManagementsTest < ApplicationSystemTestCase
  setup do
    @watering_management = watering_managements(:one)
  end

  test "visiting the index" do
    visit watering_managements_url
    assert_selector "h1", text: "Watering Managements"
  end

  test "creating a Watering management" do
    visit watering_managements_url
    click_on "New Watering Management"

    fill_in "Name", with: @watering_management.name
    click_on "Create Watering management"

    assert_text "Watering management was successfully created"
    click_on "Back"
  end

  test "updating a Watering management" do
    visit watering_managements_url
    click_on "Edit", match: :first

    fill_in "Name", with: @watering_management.name
    click_on "Update Watering management"

    assert_text "Watering management was successfully updated"
    click_on "Back"
  end

  test "destroying a Watering management" do
    visit watering_managements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Watering management was successfully destroyed"
  end
end
