require "application_system_test_case"

class IllnessControlsTest < ApplicationSystemTestCase
  setup do
    @illness_control = illness_controls(:one)
  end

  test "visiting the index" do
    visit illness_controls_url
    assert_selector "h1", text: "Illness Controls"
  end

  test "creating a Illness control" do
    visit illness_controls_url
    click_on "New Illness Control"

    fill_in "Name", with: @illness_control.name
    click_on "Create Illness control"

    assert_text "Illness control was successfully created"
    click_on "Back"
  end

  test "updating a Illness control" do
    visit illness_controls_url
    click_on "Edit", match: :first

    fill_in "Name", with: @illness_control.name
    click_on "Update Illness control"

    assert_text "Illness control was successfully updated"
    click_on "Back"
  end

  test "destroying a Illness control" do
    visit illness_controls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Illness control was successfully destroyed"
  end
end
