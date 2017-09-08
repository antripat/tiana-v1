require 'test_helper'

class MetacontactidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metacontactid = metacontactids(:one)
  end

  test "should get index" do
    get metacontactids_url
    assert_response :success
  end

  test "should get new" do
    get new_metacontactid_url
    assert_response :success
  end

  test "should create metacontactid" do
    assert_difference('Metacontactid.count') do
      post metacontactids_url, params: { metacontactid: { masterContactId: @metacontactid.masterContactId, –no-migration: @metacontactid.–no-migration } }
    end

    assert_redirected_to metacontactid_url(Metacontactid.last)
  end

  test "should show metacontactid" do
    get metacontactid_url(@metacontactid)
    assert_response :success
  end

  test "should get edit" do
    get edit_metacontactid_url(@metacontactid)
    assert_response :success
  end

  test "should update metacontactid" do
    patch metacontactid_url(@metacontactid), params: { metacontactid: { masterContactId: @metacontactid.masterContactId, –no-migration: @metacontactid.–no-migration } }
    assert_redirected_to metacontactid_url(@metacontactid)
  end

  test "should destroy metacontactid" do
    assert_difference('Metacontactid.count', -1) do
      delete metacontactid_url(@metacontactid)
    end

    assert_redirected_to metacontactids_url
  end
end
