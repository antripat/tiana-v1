require 'test_helper'

class MetatransferindicatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metatransferindicator = metatransferindicators(:one)
  end

  test "should get index" do
    get metatransferindicators_url
    assert_response :success
  end

  test "should get new" do
    get new_metatransferindicator_url
    assert_response :success
  end

  test "should create metatransferindicator" do
    assert_difference('Metatransferindicator.count') do
      post metatransferindicators_url, params: { metatransferindicator: { transferIndicatorName: @metatransferindicator.transferIndicatorName, –no-migration: @metatransferindicator.–no-migration } }
    end

    assert_redirected_to metatransferindicator_url(Metatransferindicator.last)
  end

  test "should show metatransferindicator" do
    get metatransferindicator_url(@metatransferindicator)
    assert_response :success
  end

  test "should get edit" do
    get edit_metatransferindicator_url(@metatransferindicator)
    assert_response :success
  end

  test "should update metatransferindicator" do
    patch metatransferindicator_url(@metatransferindicator), params: { metatransferindicator: { transferIndicatorName: @metatransferindicator.transferIndicatorName, –no-migration: @metatransferindicator.–no-migration } }
    assert_redirected_to metatransferindicator_url(@metatransferindicator)
  end

  test "should destroy metatransferindicator" do
    assert_difference('Metatransferindicator.count', -1) do
      delete metatransferindicator_url(@metatransferindicator)
    end

    assert_redirected_to metatransferindicators_url
  end
end
