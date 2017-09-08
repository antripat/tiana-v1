require 'test_helper'

class MetapointofcontactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metapointofcontact = metapointofcontacts(:one)
  end

  test "should get index" do
    get metapointofcontacts_url
    assert_response :success
  end

  test "should get new" do
    get new_metapointofcontact_url
    assert_response :success
  end

  test "should create metapointofcontact" do
    assert_difference('Metapointofcontact.count') do
      post metapointofcontacts_url, params: { metapointofcontact: { pointOfContactName: @metapointofcontact.pointOfContactName, –no-migration: @metapointofcontact.–no-migration } }
    end

    assert_redirected_to metapointofcontact_url(Metapointofcontact.last)
  end

  test "should show metapointofcontact" do
    get metapointofcontact_url(@metapointofcontact)
    assert_response :success
  end

  test "should get edit" do
    get edit_metapointofcontact_url(@metapointofcontact)
    assert_response :success
  end

  test "should update metapointofcontact" do
    patch metapointofcontact_url(@metapointofcontact), params: { metapointofcontact: { pointOfContactName: @metapointofcontact.pointOfContactName, –no-migration: @metapointofcontact.–no-migration } }
    assert_redirected_to metapointofcontact_url(@metapointofcontact)
  end

  test "should destroy metapointofcontact" do
    assert_difference('Metapointofcontact.count', -1) do
      delete metapointofcontact_url(@metapointofcontact)
    end

    assert_redirected_to metapointofcontacts_url
  end
end
