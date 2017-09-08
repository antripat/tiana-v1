require 'test_helper'

class SentiscoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sentiscore = sentiscores(:one)
  end

  test "should get index" do
    get sentiscores_url
    assert_response :success
  end

  test "should get new" do
    get new_sentiscore_url
    assert_response :success
  end

  test "should create sentiscore" do
    assert_difference('Sentiscore.count') do
      post sentiscores_url, params: { sentiscore: { SentiScore: @sentiscore.SentiScore, –no-migration: @sentiscore.–no-migration } }
    end

    assert_redirected_to sentiscore_url(Sentiscore.last)
  end

  test "should show sentiscore" do
    get sentiscore_url(@sentiscore)
    assert_response :success
  end

  test "should get edit" do
    get edit_sentiscore_url(@sentiscore)
    assert_response :success
  end

  test "should update sentiscore" do
    patch sentiscore_url(@sentiscore), params: { sentiscore: { SentiScore: @sentiscore.SentiScore, –no-migration: @sentiscore.–no-migration } }
    assert_redirected_to sentiscore_url(@sentiscore)
  end

  test "should destroy sentiscore" do
    assert_difference('Sentiscore.count', -1) do
      delete sentiscore_url(@sentiscore)
    end

    assert_redirected_to sentiscores_url
  end
end
