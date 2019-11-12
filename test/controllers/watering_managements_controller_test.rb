require 'test_helper'

class WateringManagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watering_management = watering_managements(:one)
  end

  test "should get index" do
    get watering_managements_url
    assert_response :success
  end

  test "should get new" do
    get new_watering_management_url
    assert_response :success
  end

  test "should create watering_management" do
    assert_difference('WateringManagement.count') do
      post watering_managements_url, params: { watering_management: { name: @watering_management.name } }
    end

    assert_redirected_to watering_management_url(WateringManagement.last)
  end

  test "should show watering_management" do
    get watering_management_url(@watering_management)
    assert_response :success
  end

  test "should get edit" do
    get edit_watering_management_url(@watering_management)
    assert_response :success
  end

  test "should update watering_management" do
    patch watering_management_url(@watering_management), params: { watering_management: { name: @watering_management.name } }
    assert_redirected_to watering_management_url(@watering_management)
  end

  test "should destroy watering_management" do
    assert_difference('WateringManagement.count', -1) do
      delete watering_management_url(@watering_management)
    end

    assert_redirected_to watering_managements_url
  end
end
