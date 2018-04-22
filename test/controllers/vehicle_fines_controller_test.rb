require 'test_helper'

class VehicleFinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_fine = vehicle_fines(:one)
  end

  test "should get index" do
    get vehicle_fines_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_fine_url
    assert_response :success
  end

  test "should create vehicle_fine" do
    assert_difference('VehicleFine.count') do
      post vehicle_fines_url, params: { vehicle_fine: { fine_id: @vehicle_fine.fine_id, vehicle_id: @vehicle_fine.vehicle_id } }
    end

    assert_redirected_to vehicle_fine_url(VehicleFine.last)
  end

  test "should show vehicle_fine" do
    get vehicle_fine_url(@vehicle_fine)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_fine_url(@vehicle_fine)
    assert_response :success
  end

  test "should update vehicle_fine" do
    patch vehicle_fine_url(@vehicle_fine), params: { vehicle_fine: { fine_id: @vehicle_fine.fine_id, vehicle_id: @vehicle_fine.vehicle_id } }
    assert_redirected_to vehicle_fine_url(@vehicle_fine)
  end

  test "should destroy vehicle_fine" do
    assert_difference('VehicleFine.count', -1) do
      delete vehicle_fine_url(@vehicle_fine)
    end

    assert_redirected_to vehicle_fines_url
  end
end
