require 'test_helper'

class FarmerAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farmer_address = farmer_addresses(:one)
  end

  test "should get index" do
    get farmer_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_farmer_address_url
    assert_response :success
  end

  test "should create farmer_address" do
    assert_difference('FarmerAddress.count') do
      post farmer_addresses_url, params: { farmer_address: { amphoe: @farmer_address.amphoe, farmer_id: @farmer_address.farmer_id, houseNo: @farmer_address.houseNo, moo: @farmer_address.moo, province: @farmer_address.province, tambon: @farmer_address.tambon, zipcode: @farmer_address.zipcode } }
    end

    assert_redirected_to farmer_address_url(FarmerAddress.last)
  end

  test "should show farmer_address" do
    get farmer_address_url(@farmer_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_farmer_address_url(@farmer_address)
    assert_response :success
  end

  test "should update farmer_address" do
    patch farmer_address_url(@farmer_address), params: { farmer_address: { amphoe: @farmer_address.amphoe, farmer_id: @farmer_address.farmer_id, houseNo: @farmer_address.houseNo, moo: @farmer_address.moo, province: @farmer_address.province, tambon: @farmer_address.tambon, zipcode: @farmer_address.zipcode } }
    assert_redirected_to farmer_address_url(@farmer_address)
  end

  test "should destroy farmer_address" do
    assert_difference('FarmerAddress.count', -1) do
      delete farmer_address_url(@farmer_address)
    end

    assert_redirected_to farmer_addresses_url
  end
end
