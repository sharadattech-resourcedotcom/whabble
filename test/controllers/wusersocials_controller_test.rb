require 'test_helper'

class WusersocialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wusersocial = wusersocials(:one)
  end

  test "should get index" do
    get wusersocials_url
    assert_response :success
  end

  test "should get new" do
    get new_wusersocial_url
    assert_response :success
  end

  test "should create wusersocial" do
    assert_difference('Wusersocial.count') do
      post wusersocials_url, params: { wusersocial: { wuserfb: @wusersocial.wuserfb, wusergp: @wusersocial.wusergp, wusertwitter: @wusersocial.wusertwitter } }
    end

    assert_redirected_to wusersocial_url(Wusersocial.last)
  end

  test "should show wusersocial" do
    get wusersocial_url(@wusersocial)
    assert_response :success
  end

  test "should get edit" do
    get edit_wusersocial_url(@wusersocial)
    assert_response :success
  end

  test "should update wusersocial" do
    patch wusersocial_url(@wusersocial), params: { wusersocial: { wuserfb: @wusersocial.wuserfb, wusergp: @wusersocial.wusergp, wusertwitter: @wusersocial.wusertwitter } }
    assert_redirected_to wusersocial_url(@wusersocial)
  end

  test "should destroy wusersocial" do
    assert_difference('Wusersocial.count', -1) do
      delete wusersocial_url(@wusersocial)
    end

    assert_redirected_to wusersocials_url
  end
end
