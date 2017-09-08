require 'test_helper'

class MetaclientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metaclient = metaclients(:one)
  end

  test "should get index" do
    get metaclients_url
    assert_response :success
  end

  test "should get new" do
    get new_metaclient_url
    assert_response :success
  end

  test "should create metaclient" do
    assert_difference('Metaclient.count') do
      post metaclients_url, params: { metaclient: { fromAddr: @metaclient.fromAddr, toAddr: @metaclient.toAddr, –no-migration: @metaclient.–no-migration } }
    end

    assert_redirected_to metaclient_url(Metaclient.last)
  end

  test "should show metaclient" do
    get metaclient_url(@metaclient)
    assert_response :success
  end

  test "should get edit" do
    get edit_metaclient_url(@metaclient)
    assert_response :success
  end

  test "should update metaclient" do
    patch metaclient_url(@metaclient), params: { metaclient: { fromAddr: @metaclient.fromAddr, toAddr: @metaclient.toAddr, –no-migration: @metaclient.–no-migration } }
    assert_redirected_to metaclient_url(@metaclient)
  end

  test "should destroy metaclient" do
    assert_difference('Metaclient.count', -1) do
      delete metaclient_url(@metaclient)
    end

    assert_redirected_to metaclients_url
  end
end
