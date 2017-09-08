require 'test_helper'

class MetaskillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metaskill = metaskills(:one)
  end

  test "should get index" do
    get metaskills_url
    assert_response :success
  end

  test "should get new" do
    get new_metaskill_url
    assert_response :success
  end

  test "should create metaskill" do
    assert_difference('Metaskill.count') do
      post metaskills_url, params: { metaskill: { skillName: @metaskill.skillName, –no-migration: @metaskill.–no-migration } }
    end

    assert_redirected_to metaskill_url(Metaskill.last)
  end

  test "should show metaskill" do
    get metaskill_url(@metaskill)
    assert_response :success
  end

  test "should get edit" do
    get edit_metaskill_url(@metaskill)
    assert_response :success
  end

  test "should update metaskill" do
    patch metaskill_url(@metaskill), params: { metaskill: { skillName: @metaskill.skillName, –no-migration: @metaskill.–no-migration } }
    assert_redirected_to metaskill_url(@metaskill)
  end

  test "should destroy metaskill" do
    assert_difference('Metaskill.count', -1) do
      delete metaskill_url(@metaskill)
    end

    assert_redirected_to metaskills_url
  end
end
