require 'test_helper'

class PlotAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plot_address = plot_addresses(:one)
  end

  test "should get index" do
    get plot_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_plot_address_url
    assert_response :success
  end

  test "should create plot_address" do
    assert_difference('PlotAddress.count') do
      post plot_addresses_url, params: { plot_address: { amphoe: @plot_address.amphoe, houseNo: @plot_address.houseNo, lat: @plot_address.lat, long: @plot_address.long, moo: @plot_address.moo, plot_id: @plot_address.plot_id, province: @plot_address.province, tambon: @plot_address.tambon, zipcode: @plot_address.zipcode } }
    end

    assert_redirected_to plot_address_url(PlotAddress.last)
  end

  test "should show plot_address" do
    get plot_address_url(@plot_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_plot_address_url(@plot_address)
    assert_response :success
  end

  test "should update plot_address" do
    patch plot_address_url(@plot_address), params: { plot_address: { amphoe: @plot_address.amphoe, houseNo: @plot_address.houseNo, lat: @plot_address.lat, long: @plot_address.long, moo: @plot_address.moo, plot_id: @plot_address.plot_id, province: @plot_address.province, tambon: @plot_address.tambon, zipcode: @plot_address.zipcode } }
    assert_redirected_to plot_address_url(@plot_address)
  end

  test "should destroy plot_address" do
    assert_difference('PlotAddress.count', -1) do
      delete plot_address_url(@plot_address)
    end

    assert_redirected_to plot_addresses_url
  end
end
