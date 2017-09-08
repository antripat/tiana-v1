require 'test_helper'

class SentitrigramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sentitrigram = sentitrigrams(:one)
  end

  test "should get index" do
    get sentitrigrams_url
    assert_response :success
  end

  test "should get new" do
    get new_sentitrigram_url
    assert_response :success
  end

  test "should create sentitrigram" do
    assert_difference('Sentitrigram.count') do
      post sentitrigrams_url, params: { sentitrigram: { FileName: @sentitrigram.FileName, TriGram: @sentitrigram.TriGram, TriGramScore: @sentitrigram.TriGramScore } }
    end

    assert_redirected_to sentitrigram_url(Sentitrigram.last)
  end

  test "should show sentitrigram" do
    get sentitrigram_url(@sentitrigram)
    assert_response :success
  end

  test "should get edit" do
    get edit_sentitrigram_url(@sentitrigram)
    assert_response :success
  end

  test "should update sentitrigram" do
    patch sentitrigram_url(@sentitrigram), params: { sentitrigram: { FileName: @sentitrigram.FileName, TriGram: @sentitrigram.TriGram, TriGramScore: @sentitrigram.TriGramScore } }
    assert_redirected_to sentitrigram_url(@sentitrigram)
  end

  test "should destroy sentitrigram" do
    assert_difference('Sentitrigram.count', -1) do
      delete sentitrigram_url(@sentitrigram)
    end

    assert_redirected_to sentitrigrams_url
  end
end
