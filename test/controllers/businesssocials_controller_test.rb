require 'test_helper'

class BusinesssocialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @businesssocial = businesssocials(:one)
  end

  test "should get index" do
    get businesssocials_url
    assert_response :success
  end

  test "should get new" do
    get new_businesssocial_url
    assert_response :success
  end

  test "should create businesssocial" do
    assert_difference('Businesssocial.count') do
      post businesssocials_url, params: { businesssocial: { busfb: @businesssocial.busfb, busgp: @businesssocial.busgp, bustwitter: @businesssocial.bustwitter } }
    end

    assert_redirected_to businesssocial_url(Businesssocial.last)
  end

  test "should show businesssocial" do
    get businesssocial_url(@businesssocial)
    assert_response :success
  end

  test "should get edit" do
    get edit_businesssocial_url(@businesssocial)
    assert_response :success
  end

  test "should update businesssocial" do
    patch businesssocial_url(@businesssocial), params: { businesssocial: { busfb: @businesssocial.busfb, busgp: @businesssocial.busgp, bustwitter: @businesssocial.bustwitter } }
    assert_redirected_to businesssocial_url(@businesssocial)
  end

  test "should destroy businesssocial" do
    assert_difference('Businesssocial.count', -1) do
      delete businesssocial_url(@businesssocial)
    end

    assert_redirected_to businesssocials_url
  end
end
