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
      post plots_url, params: { plot: { addressAmphoe: @plot.addressAmphoe, addressMoo: @plot.addressMoo, addressNo: @plot.addressNo, addressProvince: @plot.addressProvince, addressTambon: @plot.addressTambon, addressZipcode: @plot.addressZipcode, areaRai: @plot.areaRai, breed: @plot.breed, certificate: @plot.certificate, certificateDate: @plot.certificateDate, farmer_id: @plot.farmer_id, fertilizeManagement: @plot.fertilizeManagement, harvestManagement: @plot.harvestManagement, harvestPeriod: @plot.harvestPeriod, harvestQuantity: @plot.harvestQuantity, illnessManagement: @plot.illnessManagement, lat: @plot.lat, logistic: @plot.logistic, long: @plot.long, plotManagement: @plot.plotManagement, price: @plot.price, project: @plot.project, sellingChannel: @plot.sellingChannel, treeCount: @plot.treeCount, waterManagement: @plot.waterManagement } }
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
    patch plot_url(@plot), params: { plot: { addressAmphoe: @plot.addressAmphoe, addressMoo: @plot.addressMoo, addressNo: @plot.addressNo, addressProvince: @plot.addressProvince, addressTambon: @plot.addressTambon, addressZipcode: @plot.addressZipcode, areaRai: @plot.areaRai, breed: @plot.breed, certificate: @plot.certificate, certificateDate: @plot.certificateDate, farmer_id: @plot.farmer_id, fertilizeManagement: @plot.fertilizeManagement, harvestManagement: @plot.harvestManagement, harvestPeriod: @plot.harvestPeriod, harvestQuantity: @plot.harvestQuantity, illnessManagement: @plot.illnessManagement, lat: @plot.lat, logistic: @plot.logistic, long: @plot.long, plotManagement: @plot.plotManagement, price: @plot.price, project: @plot.project, sellingChannel: @plot.sellingChannel, treeCount: @plot.treeCount, waterManagement: @plot.waterManagement } }
    assert_redirected_to plot_url(@plot)
  end

  test "should destroy plot" do
    assert_difference('Plot.count', -1) do
      delete plot_url(@plot)
    end

    assert_redirected_to plots_url
  end
end
