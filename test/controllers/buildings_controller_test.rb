require "test_helper"

class BuildingsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @building = create(:building)
    @user = @building.user
    sign_in(@user)
  end

  test "should get index" do
    get buildings_url
    assert_response :success
  end

  test "should get show" do
    get building_url(@building)
    assert_response :success
  end

  test "should get new" do
    get new_building_url
    assert_response :success
  end

  test "should get edit" do
    get edit_building_url(@building)
    assert_response :success
  end

  test "should create a building" do
    assert_difference("Building.count") do
      post buildings_url, params: { 
        building: { 
          address: @building.address, 
          building_area: @building.building_area,
          investor_name: @building.investor_name,
          residents_number: @building.residents_number,
          user: @user
        }
      }
    end

    assert_redirected_to buildings_url
  end

  test "should update a building" do
    patch building_url(@building), params: { 
      building: { 
        residents_number: @building.residents_number + 3,
      }
    }
    assert_redirected_to buildings_url
  end

  test "should destroy a building" do
    assert_difference("Building.count", -1) do
      delete building_url(@building)
    end

    assert_redirected_to buildings_url
  end
end
