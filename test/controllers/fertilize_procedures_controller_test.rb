require 'test_helper'

class FertilizeProceduresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fertilize_procedure = fertilize_procedures(:one)
  end

  test "should get index" do
    get fertilize_procedures_url
    assert_response :success
  end

  test "should get new" do
    get new_fertilize_procedure_url
    assert_response :success
  end

  test "should create fertilize_procedure" do
    assert_difference('FertilizeProcedure.count') do
      post fertilize_procedures_url, params: { fertilize_procedure: { name: @fertilize_procedure.name } }
    end

    assert_redirected_to fertilize_procedure_url(FertilizeProcedure.last)
  end

  test "should show fertilize_procedure" do
    get fertilize_procedure_url(@fertilize_procedure)
    assert_response :success
  end

  test "should get edit" do
    get edit_fertilize_procedure_url(@fertilize_procedure)
    assert_response :success
  end

  test "should update fertilize_procedure" do
    patch fertilize_procedure_url(@fertilize_procedure), params: { fertilize_procedure: { name: @fertilize_procedure.name } }
    assert_redirected_to fertilize_procedure_url(@fertilize_procedure)
  end

  test "should destroy fertilize_procedure" do
    assert_difference('FertilizeProcedure.count', -1) do
      delete fertilize_procedure_url(@fertilize_procedure)
    end

    assert_redirected_to fertilize_procedures_url
  end
end
