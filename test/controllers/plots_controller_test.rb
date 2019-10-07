require 'test_helper'

class PlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plot = plots(:one)
  end

  test "should get index" do
    get plots_url
    assert_response :success
  end

  test "should get new" do
    get new_plot_url
    assert_response :success
  end

  test "should create plot" do
    assert_difference('Plot.count') do
      post plots_url, params: { plot: { addressAmphoe: @plot.addressAmphoe, addressMoo: @plot.addressMoo, addressNo: @plot.addressNo, addressProvince: @plot.addressProvince, addressTambon: @plot.addressTambon, addressZipcode: @plot.addressZipcode, areaRai: @plot.areaRai, breed: @plot.breed, certificate_id: @plot.certificate_id, farmer_id: @plot.farmer_id, fertilizeProcedure: @plot.fertilizeProcedure, harvestPeriod: @plot.harvestPeriod, harvestProcedure: @plot.harvestProcedure, harvestQuantity: @plot.harvestQuantity, issueDate: @plot.issueDate, lat: @plot.lat, logistic: @plot.logistic, long: @plot.long, market: @plot.market, plantDate: @plot.plantDate, policy: @plot.policy, price: @plot.price, treeNumber: @plot.treeNumber } }
    end

    assert_redirected_to plot_url(Plot.last)
  end

  test "should show plot" do
    get plot_url(@plot)
    assert_response :success
  end

  test "should get edit" do
    get edit_plot_url(@plot)
    assert_response :success
  end

  test "should update plot" do
    patch plot_url(@plot), params: { plot: { addressAmphoe: @plot.addressAmphoe, addressMoo: @plot.addressMoo, addressNo: @plot.addressNo, addressProvince: @plot.addressProvince, addressTambon: @plot.addressTambon, addressZipcode: @plot.addressZipcode, areaRai: @plot.areaRai, breed: @plot.breed, certificate_id: @plot.certificate_id, farmer_id: @plot.farmer_id, fertilizeProcedure: @plot.fertilizeProcedure, harvestPeriod: @plot.harvestPeriod, harvestProcedure: @plot.harvestProcedure, harvestQuantity: @plot.harvestQuantity, issueDate: @plot.issueDate, lat: @plot.lat, logistic: @plot.logistic, long: @plot.long, market: @plot.market, plantDate: @plot.plantDate, policy: @plot.policy, price: @plot.price, treeNumber: @plot.treeNumber } }
    assert_redirected_to plot_url(@plot)
  end

  test "should destroy plot" do
    assert_difference('Plot.count', -1) do
      delete plot_url(@plot)
    end

    assert_redirected_to plots_url
  end
end
