require 'test_helper'

class SentifourgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sentifourgram = sentifourgrams(:one)
  end

  test "should get index" do
    get sentifourgrams_url
    assert_response :success
  end

  test "should get new" do
    get new_sentifourgram_url
    assert_response :success
  end

  test "should create sentifourgram" do
    assert_difference('Sentifourgram.count') do
      post sentifourgrams_url, params: { sentifourgram: { FileName: @sentifourgram.FileName, FourGram: @sentifourgram.FourGram, FourGramScore: @sentifourgram.FourGramScore, –no-migration: @sentifourgram.–no-migration } }
    end

    assert_redirected_to sentifourgram_url(Sentifourgram.last)
  end

  test "should show sentifourgram" do
    get sentifourgram_url(@sentifourgram)
    assert_response :success
  end

  test "should get edit" do
    get edit_sentifourgram_url(@sentifourgram)
    assert_response :success
  end

  test "should update sentifourgram" do
    patch sentifourgram_url(@sentifourgram), params: { sentifourgram: { FileName: @sentifourgram.FileName, FourGram: @sentifourgram.FourGram, FourGramScore: @sentifourgram.FourGramScore, –no-migration: @sentifourgram.–no-migration } }
    assert_redirected_to sentifourgram_url(@sentifourgram)
  end

  test "should destroy sentifourgram" do
    assert_difference('Sentifourgram.count', -1) do
      delete sentifourgram_url(@sentifourgram)
    end

    assert_redirected_to sentifourgrams_url
  end
end
