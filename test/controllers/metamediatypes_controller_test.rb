require 'test_helper'

class MetamediatypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metamediatype = metamediatypes(:one)
  end

  test "should get index" do
    get metamediatypes_url
    assert_response :success
  end

  test "should get new" do
    get new_metamediatype_url
    assert_response :success
  end

  test "should create metamediatype" do
    assert_difference('Metamediatype.count') do
      post metamediatypes_url, params: { metamediatype: { mediaTypeName: @metamediatype.mediaTypeName, –no-migration: @metamediatype.–no-migration } }
    end

    assert_redirected_to metamediatype_url(Metamediatype.last)
  end

  test "should show metamediatype" do
    get metamediatype_url(@metamediatype)
    assert_response :success
  end

  test "should get edit" do
    get edit_metamediatype_url(@metamediatype)
    assert_response :success
  end

  test "should update metamediatype" do
    patch metamediatype_url(@metamediatype), params: { metamediatype: { mediaTypeName: @metamediatype.mediaTypeName, –no-migration: @metamediatype.–no-migration } }
    assert_redirected_to metamediatype_url(@metamediatype)
  end

  test "should destroy metamediatype" do
    assert_difference('Metamediatype.count', -1) do
      delete metamediatype_url(@metamediatype)
    end

    assert_redirected_to metamediatypes_url
  end
end
