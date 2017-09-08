require 'test_helper'

class JsoncalldataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jsoncalldatum = jsoncalldata(:one)
  end

  test "should get index" do
    get jsoncalldata_url
    assert_response :success
  end

  test "should get new" do
    get new_jsoncalldatum_url
    assert_response :success
  end

  test "should create jsoncalldatum" do
    assert_difference('Jsoncalldatum.count') do
      post jsoncalldata_url, params: { jsoncalldatum: { FileId: @jsoncalldatum.FileId, callDuration: @jsoncalldatum.callDuration, nonTalkTime: @jsoncalldatum.nonTalkTime, –no-migration: @jsoncalldatum.–no-migration } }
    end

    assert_redirected_to jsoncalldatum_url(Jsoncalldatum.last)
  end

  test "should show jsoncalldatum" do
    get jsoncalldatum_url(@jsoncalldatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_jsoncalldatum_url(@jsoncalldatum)
    assert_response :success
  end

  test "should update jsoncalldatum" do
    patch jsoncalldatum_url(@jsoncalldatum), params: { jsoncalldatum: { FileId: @jsoncalldatum.FileId, callDuration: @jsoncalldatum.callDuration, nonTalkTime: @jsoncalldatum.nonTalkTime, –no-migration: @jsoncalldatum.–no-migration } }
    assert_redirected_to jsoncalldatum_url(@jsoncalldatum)
  end

  test "should destroy jsoncalldatum" do
    assert_difference('Jsoncalldatum.count', -1) do
      delete jsoncalldatum_url(@jsoncalldatum)
    end

    assert_redirected_to jsoncalldata_url
  end
end
