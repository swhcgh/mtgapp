require 'test_helper'

class ContendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contender = contenders(:one)
  end

  test "should get index" do
    get contenders_url
    assert_response :success
  end

  test "should get new" do
    get new_contender_url
    assert_response :success
  end

  test "should create contender" do
    assert_difference('Contender.count') do
      post contenders_url, params: { contender: { deck_id: @contender.deck_id, tournament_id: @contender.tournament_id, user_id: @contender.user_id } }
    end

    assert_redirected_to contender_url(Contender.last)
  end

  test "should show contender" do
    get contender_url(@contender)
    assert_response :success
  end

  test "should get edit" do
    get edit_contender_url(@contender)
    assert_response :success
  end

  test "should update contender" do
    patch contender_url(@contender), params: { contender: { deck_id: @contender.deck_id, tournament_id: @contender.tournament_id, user_id: @contender.user_id } }
    assert_redirected_to contender_url(@contender)
  end

  test "should destroy contender" do
    assert_difference('Contender.count', -1) do
      delete contender_url(@contender)
    end

    assert_redirected_to contenders_url
  end
end
