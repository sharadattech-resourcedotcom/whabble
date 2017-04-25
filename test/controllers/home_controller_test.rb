require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get createevent" do
    get home_createevent_url
    assert_response :success
  end

  test "should get searchevents" do
    get home_searchevents_url
    assert_response :success
  end

  test "should get updateprofile" do
    get home_updateprofile_url
    assert_response :success
  end

  test "should get createvenue" do
    get home_createvenue_url
    assert_response :success
  end

  test "should get createbusiness" do
    get home_createbusiness_url
    assert_response :success
  end

end
