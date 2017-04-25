require 'test_helper'

class WeventaddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weventaddress = weventaddresses(:one)
  end

  test "should get index" do
    get weventaddresses_url
    assert_response :success
  end

  test "should get new" do
    get new_weventaddress_url
    assert_response :success
  end

  test "should create weventaddress" do
    assert_difference('Weventaddress.count') do
      post weventaddresses_url, params: { weventaddress: { string: @weventaddress.string, weventadd1: @weventaddress.weventadd1, weventadd2: @weventaddress.weventadd2, weventcity: @weventaddress.weventcity, weventpostal: @weventaddress.weventpostal, weventstate: @weventaddress.weventstate, weventurl: @weventaddress.weventurl } }
    end

    assert_redirected_to weventaddress_url(Weventaddress.last)
  end

  test "should show weventaddress" do
    get weventaddress_url(@weventaddress)
    assert_response :success
  end

  test "should get edit" do
    get edit_weventaddress_url(@weventaddress)
    assert_response :success
  end

  test "should update weventaddress" do
    patch weventaddress_url(@weventaddress), params: { weventaddress: { string: @weventaddress.string, weventadd1: @weventaddress.weventadd1, weventadd2: @weventaddress.weventadd2, weventcity: @weventaddress.weventcity, weventpostal: @weventaddress.weventpostal, weventstate: @weventaddress.weventstate, weventurl: @weventaddress.weventurl } }
    assert_redirected_to weventaddress_url(@weventaddress)
  end

  test "should destroy weventaddress" do
    assert_difference('Weventaddress.count', -1) do
      delete weventaddress_url(@weventaddress)
    end

    assert_redirected_to weventaddresses_url
  end
end
