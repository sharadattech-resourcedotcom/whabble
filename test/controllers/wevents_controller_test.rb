require 'test_helper'

class WeventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wevent = wevents(:one)
  end

  test "should get index" do
    get wevents_url
    assert_response :success
  end

  test "should get new" do
    get new_wevent_url
    assert_response :success
  end

  test "should create wevent" do
    assert_difference('Wevent.count') do
      post wevents_url, params: { wevent: { weventbusy: @wevent.weventbusy, weventcat: @wevent.weventcat, weventdesc: @wevent.weventdesc, weventname: @wevent.weventname, weventprivate: @wevent.weventprivate, weventrepeat: @wevent.weventrepeat, weventstart: @wevent.weventstart, weventstop: @wevent.weventstop, weventtype: @wevent.weventtype } }
    end

    assert_redirected_to wevent_url(Wevent.last)
  end

  test "should show wevent" do
    get wevent_url(@wevent)
    assert_response :success
  end

  test "should get edit" do
    get edit_wevent_url(@wevent)
    assert_response :success
  end

  test "should update wevent" do
    patch wevent_url(@wevent), params: { wevent: { weventbusy: @wevent.weventbusy, weventcat: @wevent.weventcat, weventdesc: @wevent.weventdesc, weventname: @wevent.weventname, weventprivate: @wevent.weventprivate, weventrepeat: @wevent.weventrepeat, weventstart: @wevent.weventstart, weventstop: @wevent.weventstop, weventtype: @wevent.weventtype } }
    assert_redirected_to wevent_url(@wevent)
  end

  test "should destroy wevent" do
    assert_difference('Wevent.count', -1) do
      delete wevent_url(@wevent)
    end

    assert_redirected_to wevents_url
  end
end
