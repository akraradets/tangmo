require 'test_helper'

class IllnessControlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @illness_control = illness_controls(:one)
  end

  test "should get index" do
    get illness_controls_url
    assert_response :success
  end

  test "should get new" do
    get new_illness_control_url
    assert_response :success
  end

  test "should create illness_control" do
    assert_difference('IllnessControl.count') do
      post illness_controls_url, params: { illness_control: { name: @illness_control.name } }
    end

    assert_redirected_to illness_control_url(IllnessControl.last)
  end

  test "should show illness_control" do
    get illness_control_url(@illness_control)
    assert_response :success
  end

  test "should get edit" do
    get edit_illness_control_url(@illness_control)
    assert_response :success
  end

  test "should update illness_control" do
    patch illness_control_url(@illness_control), params: { illness_control: { name: @illness_control.name } }
    assert_redirected_to illness_control_url(@illness_control)
  end

  test "should destroy illness_control" do
    assert_difference('IllnessControl.count', -1) do
      delete illness_control_url(@illness_control)
    end

    assert_redirected_to illness_controls_url
  end
end
