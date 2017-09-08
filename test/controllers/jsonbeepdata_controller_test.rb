require 'test_helper'

class JsonbeepdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jsonbeepdatum = jsonbeepdata(:one)
  end

  test "should get index" do
    get jsonbeepdata_url
    assert_response :success
  end

  test "should get new" do
    get new_jsonbeepdatum_url
    assert_response :success
  end

  test "should create jsonbeepdatum" do
    assert_difference('Jsonbeepdatum.count') do
      post jsonbeepdata_url, params: { jsonbeepdatum: { FileName: @jsonbeepdatum.FileName, beepDuration: @jsonbeepdatum.beepDuration, beepSeq: @jsonbeepdatum.beepSeq } }
    end

    assert_redirected_to jsonbeepdatum_url(Jsonbeepdatum.last)
  end

  test "should show jsonbeepdatum" do
    get jsonbeepdatum_url(@jsonbeepdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_jsonbeepdatum_url(@jsonbeepdatum)
    assert_response :success
  end

  test "should update jsonbeepdatum" do
    patch jsonbeepdatum_url(@jsonbeepdatum), params: { jsonbeepdatum: { FileName: @jsonbeepdatum.FileName, beepDuration: @jsonbeepdatum.beepDuration, beepSeq: @jsonbeepdatum.beepSeq } }
    assert_redirected_to jsonbeepdatum_url(@jsonbeepdatum)
  end

  test "should destroy jsonbeepdatum" do
    assert_difference('Jsonbeepdatum.count', -1) do
      delete jsonbeepdatum_url(@jsonbeepdatum)
    end

    assert_redirected_to jsonbeepdata_url
  end
end
