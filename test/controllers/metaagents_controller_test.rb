require 'test_helper'

class MetaagentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metaagent = metaagents(:one)
  end

  test "should get index" do
    get metaagents_url
    assert_response :success
  end

  test "should get new" do
    get new_metaagent_url
    assert_response :success
  end

  test "should create metaagent" do
    assert_difference('Metaagent.count') do
      post metaagents_url, params: { metaagent: { agentId: @metaagent.agentId, firstName: @metaagent.firstName, lastName: @metaagent.lastName, teamId: @metaagent.teamId, teamName: @metaagent.teamName, –no-migration: @metaagent.–no-migration } }
    end

    assert_redirected_to metaagent_url(Metaagent.last)
  end

  test "should show metaagent" do
    get metaagent_url(@metaagent)
    assert_response :success
  end

  test "should get edit" do
    get edit_metaagent_url(@metaagent)
    assert_response :success
  end

  test "should update metaagent" do
    patch metaagent_url(@metaagent), params: { metaagent: { agentId: @metaagent.agentId, firstName: @metaagent.firstName, lastName: @metaagent.lastName, teamId: @metaagent.teamId, teamName: @metaagent.teamName, –no-migration: @metaagent.–no-migration } }
    assert_redirected_to metaagent_url(@metaagent)
  end

  test "should destroy metaagent" do
    assert_difference('Metaagent.count', -1) do
      delete metaagent_url(@metaagent)
    end

    assert_redirected_to metaagents_url
  end
end
