require 'test_helper'

class WusercontactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wusercontact = wusercontacts(:one)
  end

  test "should get index" do
    get wusercontacts_url
    assert_response :success
  end

  test "should get new" do
    get new_wusercontact_url
    assert_response :success
  end

  test "should create wusercontact" do
    assert_difference('Wusercontact.count') do
      post wusercontacts_url, params: { wusercontact: { wuseradd1: @wusercontact.wuseradd1, wuseradd2: @wusercontact.wuseradd2, wusercity: @wusercontact.wusercity, wuserphone: @wusercontact.wuserphone, wuserpostal: @wusercontact.wuserpostal, wuserstate: @wusercontact.wuserstate } }
    end

    assert_redirected_to wusercontact_url(Wusercontact.last)
  end

  test "should show wusercontact" do
    get wusercontact_url(@wusercontact)
    assert_response :success
  end

  test "should get edit" do
    get edit_wusercontact_url(@wusercontact)
    assert_response :success
  end

  test "should update wusercontact" do
    patch wusercontact_url(@wusercontact), params: { wusercontact: { wuseradd1: @wusercontact.wuseradd1, wuseradd2: @wusercontact.wuseradd2, wusercity: @wusercontact.wusercity, wuserphone: @wusercontact.wuserphone, wuserpostal: @wusercontact.wuserpostal, wuserstate: @wusercontact.wuserstate } }
    assert_redirected_to wusercontact_url(@wusercontact)
  end

  test "should destroy wusercontact" do
    assert_difference('Wusercontact.count', -1) do
      delete wusercontact_url(@wusercontact)
    end

    assert_redirected_to wusercontacts_url
  end
end
