require 'test_helper'

class VenuesocialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @venuesocial = venuesocials(:one)
  end

  test "should get index" do
    get venuesocials_url
    assert_response :success
  end

  test "should get new" do
    get new_venuesocial_url
    assert_response :success
  end

  test "should create venuesocial" do
    assert_difference('Venuesocial.count') do
      post venuesocials_url, params: { venuesocial: { venuefb: @venuesocial.venuefb, venuegp: @venuesocial.venuegp, venuetwitter: @venuesocial.venuetwitter } }
    end

    assert_redirected_to venuesocial_url(Venuesocial.last)
  end

  test "should show venuesocial" do
    get venuesocial_url(@venuesocial)
    assert_response :success
  end

  test "should get edit" do
    get edit_venuesocial_url(@venuesocial)
    assert_response :success
  end

  test "should update venuesocial" do
    patch venuesocial_url(@venuesocial), params: { venuesocial: { venuefb: @venuesocial.venuefb, venuegp: @venuesocial.venuegp, venuetwitter: @venuesocial.venuetwitter } }
    assert_redirected_to venuesocial_url(@venuesocial)
  end

  test "should destroy venuesocial" do
    assert_difference('Venuesocial.count', -1) do
      delete venuesocial_url(@venuesocial)
    end

    assert_redirected_to venuesocials_url
  end
end
