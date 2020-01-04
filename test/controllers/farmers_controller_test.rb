require 'test_helper'

class FarmersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farmer = farmers(:one)
  end

  test "should get index" do
    get farmers_url
    assert_response :success
  end

  test "should get new" do
    get new_farmer_url
    assert_response :success
  end

  test "should create farmer" do
    assert_difference('Farmer.count') do
      post farmers_url, params: { farmer: { addressAmphoe: @farmer.addressAmphoe, addressMoo: @farmer.addressMoo, addressNo: @farmer.addressNo, addressProvince: @farmer.addressProvince, addressTambon: @farmer.addressTambon, addressZipcode: @farmer.addressZipcode, dateOfBirth: @farmer.dateOfBirth, email: @farmer.email, facebook: @farmer.facebook, firstName: @farmer.firstName, group: @farmer.group, lastName: @farmer.lastName, line: @farmer.line, phone: @farmer.phone, title: @farmer.title } }
    end

    assert_redirected_to farmer_url(Farmer.last)
  end

  test "should show farmer" do
    get farmer_url(@farmer)
    assert_response :success
  end

  test "should get edit" do
    get edit_farmer_url(@farmer)
    assert_response :success
  end

  test "should update farmer" do
    patch farmer_url(@farmer), params: { farmer: { addressAmphoe: @farmer.addressAmphoe, addressMoo: @farmer.addressMoo, addressNo: @farmer.addressNo, addressProvince: @farmer.addressProvince, addressTambon: @farmer.addressTambon, addressZipcode: @farmer.addressZipcode, dateOfBirth: @farmer.dateOfBirth, email: @farmer.email, facebook: @farmer.facebook, firstName: @farmer.firstName, group: @farmer.group, lastName: @farmer.lastName, line: @farmer.line, phone: @farmer.phone, title: @farmer.title } }
    assert_redirected_to farmer_url(@farmer)
  end

  test "should destroy farmer" do
    assert_difference('Farmer.count', -1) do
      delete farmer_url(@farmer)
    end

    assert_redirected_to farmers_url
  end
end
