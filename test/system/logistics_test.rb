require "application_system_test_case"

class LogisticsTest < ApplicationSystemTestCase
  setup do
    @logistic = logistics(:one)
  end

  test "visiting the index" do
    visit logistics_url
    assert_selector "h1", text: "Logistics"
  end

  test "creating a Logistic" do
    visit logistics_url
    click_on "New Logistic"

    fill_in "Name", with: @logistic.name
    click_on "Create Logistic"

    assert_text "Logistic was successfully created"
    click_on "Back"
  end

  test "updating a Logistic" do
    visit logistics_url
    click_on "Edit", match: :first

    fill_in "Name", with: @logistic.name
    click_on "Update Logistic"

    assert_text "Logistic was successfully updated"
    click_on "Back"
  end

  test "destroying a Logistic" do
    visit logistics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Logistic was successfully destroyed"
  end
end
