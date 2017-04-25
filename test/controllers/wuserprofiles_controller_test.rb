require 'test_helper'

class WuserprofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wuserprofile = wuserprofiles(:one)
  end

  test "should get index" do
    get wuserprofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_wuserprofile_url
    assert_response :success
  end

  test "should create wuserprofile" do
    assert_difference('Wuserprofile.count') do
      post wuserprofiles_url, params: { wuserprofile: { wuseremail: @wuserprofile.wuseremail, wuserfirst: @wuserprofile.wuserfirst, wuserlast: @wuserprofile.wuserlast, wusername: @wuserprofile.wusername } }
    end

    assert_redirected_to wuserprofile_url(Wuserprofile.last)
  end

  test "should show wuserprofile" do
    get wuserprofile_url(@wuserprofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_wuserprofile_url(@wuserprofile)
    assert_response :success
  end

  test "should update wuserprofile" do
    patch wuserprofile_url(@wuserprofile), params: { wuserprofile: { wuseremail: @wuserprofile.wuseremail, wuserfirst: @wuserprofile.wuserfirst, wuserlast: @wuserprofile.wuserlast, wusername: @wuserprofile.wusername } }
    assert_redirected_to wuserprofile_url(@wuserprofile)
  end

  test "should destroy wuserprofile" do
    assert_difference('Wuserprofile.count', -1) do
      delete wuserprofile_url(@wuserprofile)
    end

    assert_redirected_to wuserprofiles_url
  end
end
