require 'test_helper'

class WuserbusinessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wuserbusiness = wuserbusinesses(:one)
  end

  test "should get index" do
    get wuserbusinesses_url
    assert_response :success
  end

  test "should get new" do
    get new_wuserbusiness_url
    assert_response :success
  end

  test "should create wuserbusiness" do
    assert_difference('Wuserbusiness.count') do
      post wuserbusinesses_url, params: { wuserbusiness: { Wuserco: @wuserbusiness.Wuserco, wusercoadd1: @wuserbusiness.wusercoadd1, wusercoadd2: @wuserbusiness.wusercoadd2, wusercocity: @wuserbusiness.wusercocity, wusercoemail: @wuserbusiness.wusercoemail, wusercophone: @wuserbusiness.wusercophone, wusercopostal: @wuserbusiness.wusercopostal, wusercostate: @wuserbusiness.wusercostate, wusercotitle: @wuserbusiness.wusercotitle } }
    end

    assert_redirected_to wuserbusiness_url(Wuserbusiness.last)
  end

  test "should show wuserbusiness" do
    get wuserbusiness_url(@wuserbusiness)
    assert_response :success
  end

  test "should get edit" do
    get edit_wuserbusiness_url(@wuserbusiness)
    assert_response :success
  end

  test "should update wuserbusiness" do
    patch wuserbusiness_url(@wuserbusiness), params: { wuserbusiness: { Wuserco: @wuserbusiness.Wuserco, wusercoadd1: @wuserbusiness.wusercoadd1, wusercoadd2: @wuserbusiness.wusercoadd2, wusercocity: @wuserbusiness.wusercocity, wusercoemail: @wuserbusiness.wusercoemail, wusercophone: @wuserbusiness.wusercophone, wusercopostal: @wuserbusiness.wusercopostal, wusercostate: @wuserbusiness.wusercostate, wusercotitle: @wuserbusiness.wusercotitle } }
    assert_redirected_to wuserbusiness_url(@wuserbusiness)
  end

  test "should destroy wuserbusiness" do
    assert_difference('Wuserbusiness.count', -1) do
      delete wuserbusiness_url(@wuserbusiness)
    end

    assert_redirected_to wuserbusinesses_url
  end
end
