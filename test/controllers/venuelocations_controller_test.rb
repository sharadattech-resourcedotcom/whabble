require 'test_helper'

class VenuelocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @venuelocation = venuelocations(:one)
  end

  test "should get index" do
    get venuelocations_url
    assert_response :success
  end

  test "should get new" do
    get new_venuelocation_url
    assert_response :success
  end

  test "should create venuelocation" do
    assert_difference('Venuelocation.count') do
      post venuelocations_url, params: { venuelocation: { venueadd1: @venuelocation.venueadd1, venueadd2: @venuelocation.venueadd2, venuecity: @venuelocation.venuecity, venuecountry: @venuelocation.venuecountry, venuelanguage: @venuelocation.venuelanguage, venuepostal: @venuelocation.venuepostal, venuestate: @venuelocation.venuestate } }
    end

    assert_redirected_to venuelocation_url(Venuelocation.last)
  end

  test "should show venuelocation" do
    get venuelocation_url(@venuelocation)
    assert_response :success
  end

  test "should get edit" do
    get edit_venuelocation_url(@venuelocation)
    assert_response :success
  end

  test "should update venuelocation" do
    patch venuelocation_url(@venuelocation), params: { venuelocation: { venueadd1: @venuelocation.venueadd1, venueadd2: @venuelocation.venueadd2, venuecity: @venuelocation.venuecity, venuecountry: @venuelocation.venuecountry, venuelanguage: @venuelocation.venuelanguage, venuepostal: @venuelocation.venuepostal, venuestate: @venuelocation.venuestate } }
    assert_redirected_to venuelocation_url(@venuelocation)
  end

  test "should destroy venuelocation" do
    assert_difference('Venuelocation.count', -1) do
      delete venuelocation_url(@venuelocation)
    end

    assert_redirected_to venuelocations_url
  end
end
