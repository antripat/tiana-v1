require 'test_helper'

class MetacampaignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metacampaign = metacampaigns(:one)
  end

  test "should get index" do
    get metacampaigns_url
    assert_response :success
  end

  test "should get new" do
    get new_metacampaign_url
    assert_response :success
  end

  test "should create metacampaign" do
    assert_difference('Metacampaign.count') do
      post metacampaigns_url, params: { metacampaign: { campaignName: @metacampaign.campaignName, –no-migration: @metacampaign.–no-migration } }
    end

    assert_redirected_to metacampaign_url(Metacampaign.last)
  end

  test "should show metacampaign" do
    get metacampaign_url(@metacampaign)
    assert_response :success
  end

  test "should get edit" do
    get edit_metacampaign_url(@metacampaign)
    assert_response :success
  end

  test "should update metacampaign" do
    patch metacampaign_url(@metacampaign), params: { metacampaign: { campaignName: @metacampaign.campaignName, –no-migration: @metacampaign.–no-migration } }
    assert_redirected_to metacampaign_url(@metacampaign)
  end

  test "should destroy metacampaign" do
    assert_difference('Metacampaign.count', -1) do
      delete metacampaign_url(@metacampaign)
    end

    assert_redirected_to metacampaigns_url
  end
end
