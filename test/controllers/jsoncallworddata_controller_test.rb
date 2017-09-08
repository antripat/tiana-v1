require 'test_helper'

class JsoncallworddataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jsoncallworddatum = jsoncallworddata(:one)
  end

  test "should get index" do
    get jsoncallworddata_url
    assert_response :success
  end

  test "should get new" do
    get new_jsoncallworddatum_url
    assert_response :success
  end

  test "should create jsoncallworddatum" do
    assert_difference('Jsoncallworddatum.count') do
      post jsoncallworddata_url, params: { jsoncallworddatum: { FileName: @jsoncallworddatum.FileName, Keyword: @jsoncallworddatum.Keyword, confidence: @jsoncallworddatum.confidence, endTime: @jsoncallworddatum.endTime, gender: @jsoncallworddatum.gender, score: @jsoncallworddatum.score, speakerType: @jsoncallworddatum.speakerType, startTime: @jsoncallworddatum.startTime, wordSeq: @jsoncallworddatum.wordSeq, –no-migration: @jsoncallworddatum.–no-migration } }
    end

    assert_redirected_to jsoncallworddatum_url(Jsoncallworddatum.last)
  end

  test "should show jsoncallworddatum" do
    get jsoncallworddatum_url(@jsoncallworddatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_jsoncallworddatum_url(@jsoncallworddatum)
    assert_response :success
  end

  test "should update jsoncallworddatum" do
    patch jsoncallworddatum_url(@jsoncallworddatum), params: { jsoncallworddatum: { FileName: @jsoncallworddatum.FileName, Keyword: @jsoncallworddatum.Keyword, confidence: @jsoncallworddatum.confidence, endTime: @jsoncallworddatum.endTime, gender: @jsoncallworddatum.gender, score: @jsoncallworddatum.score, speakerType: @jsoncallworddatum.speakerType, startTime: @jsoncallworddatum.startTime, wordSeq: @jsoncallworddatum.wordSeq, –no-migration: @jsoncallworddatum.–no-migration } }
    assert_redirected_to jsoncallworddatum_url(@jsoncallworddatum)
  end

  test "should destroy jsoncallworddatum" do
    assert_difference('Jsoncallworddatum.count', -1) do
      delete jsoncallworddatum_url(@jsoncallworddatum)
    end

    assert_redirected_to jsoncallworddata_url
  end
end
