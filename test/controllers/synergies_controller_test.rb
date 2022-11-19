require 'test_helper'

class SynergiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @synergy = synergies(:one)
  end

  test "should get index" do
    get synergies_url
    assert_response :success
  end

  test "should get new" do
    get new_synergy_url
    assert_response :success
  end

  test "should create synergy" do
    assert_difference('Synergy.count') do
      post synergies_url, params: { synergy: { s_name: @synergy.s_name } }
    end

    assert_redirected_to synergy_url(Synergy.last)
  end

  test "should show synergy" do
    get synergy_url(@synergy)
    assert_response :success
  end

  test "should get edit" do
    get edit_synergy_url(@synergy)
    assert_response :success
  end

  test "should update synergy" do
    patch synergy_url(@synergy), params: { synergy: { s_name: @synergy.s_name } }
    assert_redirected_to synergy_url(@synergy)
  end

  test "should destroy synergy" do
    assert_difference('Synergy.count', -1) do
      delete synergy_url(@synergy)
    end

    assert_redirected_to synergies_url
  end
end
