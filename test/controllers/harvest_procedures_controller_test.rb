require 'test_helper'

class HarvestProceduresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harvest_procedure = harvest_procedures(:one)
  end

  test "should get index" do
    get harvest_procedures_url
    assert_response :success
  end

  test "should get new" do
    get new_harvest_procedure_url
    assert_response :success
  end

  test "should create harvest_procedure" do
    assert_difference('HarvestProcedure.count') do
      post harvest_procedures_url, params: { harvest_procedure: { name: @harvest_procedure.name } }
    end

    assert_redirected_to harvest_procedure_url(HarvestProcedure.last)
  end

  test "should show harvest_procedure" do
    get harvest_procedure_url(@harvest_procedure)
    assert_response :success
  end

  test "should get edit" do
    get edit_harvest_procedure_url(@harvest_procedure)
    assert_response :success
  end

  test "should update harvest_procedure" do
    patch harvest_procedure_url(@harvest_procedure), params: { harvest_procedure: { name: @harvest_procedure.name } }
    assert_redirected_to harvest_procedure_url(@harvest_procedure)
  end

  test "should destroy harvest_procedure" do
    assert_difference('HarvestProcedure.count', -1) do
      delete harvest_procedure_url(@harvest_procedure)
    end

    assert_redirected_to harvest_procedures_url
  end
end
