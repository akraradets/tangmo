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

    fill_in "Address", with: @farmer.address_id
    fill_in "Dateofbirth", with: @farmer.dateOfBirth
    fill_in "Email", with: @farmer.email
    fill_in "Facebook", with: @farmer.facebook
    fill_in "Firstname", with: @farmer.firstName
    fill_in "Group", with: @farmer.group
    fill_in "Lastname", with: @farmer.lastName
    fill_in "Line", with: @farmer.line
    fill_in "Phone", with: @farmer.phone
    fill_in "Title", with: @farmer.title
    click_on "Create Farmer"

    assert_text "Farmer was successfully created"
    click_on "Back"
  end

  test "updating a Farmer" do
    visit farmers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @farmer.address_id
    fill_in "Dateofbirth", with: @farmer.dateOfBirth
    fill_in "Email", with: @farmer.email
    fill_in "Facebook", with: @farmer.facebook
    fill_in "Firstname", with: @farmer.firstName
    fill_in "Group", with: @farmer.group
    fill_in "Lastname", with: @farmer.lastName
    fill_in "Line", with: @farmer.line
    fill_in "Phone", with: @farmer.phone
    fill_in "Title", with: @farmer.title
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
