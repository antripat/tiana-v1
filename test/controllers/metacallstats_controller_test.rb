require 'test_helper'

class MetacallstatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metacallstat = metacallstats(:one)
  end

  test "should get index" do
    get metacallstats_url
    assert_response :success
  end

  test "should get new" do
    get new_metacallstat_url
    assert_response :success
  end

  test "should create metacallstat" do
    assert_difference('Metacallstat.count') do
      post metacallstats_url, params: { metacallstat: { ACWSeconds: @metacallstat.ACWSeconds, ID: @metacallstat.ID, NPSscore: @metacallstat.NPSscore, abandonSeconds: @metacallstat.abandonSeconds, abandoned: @metacallstat.abandoned, agentId: @metacallstat.agentId, agentSeconds: @metacallstat.agentSeconds, callbackTime: @metacallstat.callbackTime, campaignId: @metacallstat.campaignId, confSeconds: @metacallstat.confSeconds, contactStart: @metacallstat.contactStart, dateACWWarehoused: @metacallstat.dateACWWarehoused, dateContactWarehoused: @metacallstat.dateContactWarehoused, dispositionNotes: @metacallstat.dispositionNotes, holdCount: @metacallstat.holdCount, holdSeconds: @metacallstat.holdSeconds, inQueueSeconds: @metacallstat.inQueueSeconds, isLogged: @metacallstat.isLogged, isOutbound: @metacallstat.isOutbound, isRefused: @metacallstat.isRefused, isShortAbandon: @metacallstat.isShortAbandon, isTakeover: @metacallstat.isTakeover, lastUpdateTime: @metacallstat.lastUpdateTime, mediaType: @metacallstat.mediaType, pointOfContactId: @metacallstat.pointOfContactId, postQueueSeconds: @metacallstat.postQueueSeconds, preQueueSeconds: @metacallstat.preQueueSeconds, primaryDispositionId: @metacallstat.primaryDispositionId, refuseReason: @metacallstat.refuseReason, refuseTime: @metacallstat.refuseTime, releaseSeconds: @metacallstat.releaseSeconds, routingTime: @metacallstat.routingTime, secondaryDispositionId: @metacallstat.secondaryDispositionId, serviceLevelFlag: @metacallstat.serviceLevelFlag, skillId: @metacallstat.skillId, totalDurationSeconds: @metacallstat.totalDurationSeconds, transferIndicatorId: @metacallstat.transferIndicatorId, –no-migration: @metacallstat.–no-migration } }
    end

    assert_redirected_to metacallstat_url(Metacallstat.last)
  end

  test "should show metacallstat" do
    get metacallstat_url(@metacallstat)
    assert_response :success
  end

  test "should get edit" do
    get edit_metacallstat_url(@metacallstat)
    assert_response :success
  end

  test "should update metacallstat" do
    patch metacallstat_url(@metacallstat), params: { metacallstat: { ACWSeconds: @metacallstat.ACWSeconds, ID: @metacallstat.ID, NPSscore: @metacallstat.NPSscore, abandonSeconds: @metacallstat.abandonSeconds, abandoned: @metacallstat.abandoned, agentId: @metacallstat.agentId, agentSeconds: @metacallstat.agentSeconds, callbackTime: @metacallstat.callbackTime, campaignId: @metacallstat.campaignId, confSeconds: @metacallstat.confSeconds, contactStart: @metacallstat.contactStart, dateACWWarehoused: @metacallstat.dateACWWarehoused, dateContactWarehoused: @metacallstat.dateContactWarehoused, dispositionNotes: @metacallstat.dispositionNotes, holdCount: @metacallstat.holdCount, holdSeconds: @metacallstat.holdSeconds, inQueueSeconds: @metacallstat.inQueueSeconds, isLogged: @metacallstat.isLogged, isOutbound: @metacallstat.isOutbound, isRefused: @metacallstat.isRefused, isShortAbandon: @metacallstat.isShortAbandon, isTakeover: @metacallstat.isTakeover, lastUpdateTime: @metacallstat.lastUpdateTime, mediaType: @metacallstat.mediaType, pointOfContactId: @metacallstat.pointOfContactId, postQueueSeconds: @metacallstat.postQueueSeconds, preQueueSeconds: @metacallstat.preQueueSeconds, primaryDispositionId: @metacallstat.primaryDispositionId, refuseReason: @metacallstat.refuseReason, refuseTime: @metacallstat.refuseTime, releaseSeconds: @metacallstat.releaseSeconds, routingTime: @metacallstat.routingTime, secondaryDispositionId: @metacallstat.secondaryDispositionId, serviceLevelFlag: @metacallstat.serviceLevelFlag, skillId: @metacallstat.skillId, totalDurationSeconds: @metacallstat.totalDurationSeconds, transferIndicatorId: @metacallstat.transferIndicatorId, –no-migration: @metacallstat.–no-migration } }
    assert_redirected_to metacallstat_url(@metacallstat)
  end

  test "should destroy metacallstat" do
    assert_difference('Metacallstat.count', -1) do
      delete metacallstat_url(@metacallstat)
    end

    assert_redirected_to metacallstats_url
  end
end
