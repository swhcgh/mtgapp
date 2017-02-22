require 'test_helper'

class PairingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pairing = pairings(:one)
  end

  test "should get index" do
    get pairings_url
    assert_response :success
  end

  test "should get new" do
    get new_pairing_url
    assert_response :success
  end

  test "should create pairing" do
    assert_difference('Pairing.count') do
      post pairings_url, params: { pairing: { Contender1: @pairing.Contender1, Contender2: @pairing.Contender2, Result: @pairing.Result, RoundNumber: @pairing.RoundNumber, tournament_id: @pairing.tournament_id } }
    end

    assert_redirected_to pairing_url(Pairing.last)
  end

  test "should show pairing" do
    get pairing_url(@pairing)
    assert_response :success
  end

  test "should get edit" do
    get edit_pairing_url(@pairing)
    assert_response :success
  end

  test "should update pairing" do
    patch pairing_url(@pairing), params: { pairing: { Contender1: @pairing.Contender1, Contender2: @pairing.Contender2, Result: @pairing.Result, RoundNumber: @pairing.RoundNumber, tournament_id: @pairing.tournament_id } }
    assert_redirected_to pairing_url(@pairing)
  end

  test "should destroy pairing" do
    assert_difference('Pairing.count', -1) do
      delete pairing_url(@pairing)
    end

    assert_redirected_to pairings_url
  end
end
