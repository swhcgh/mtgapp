require 'test_helper'

class CardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get cards_url
    assert_response :success
  end

  test "should get new" do
    get new_card_url
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post cards_url, params: { card: { CMC: @card.CMC, Card_Name: @card.Card_Name, Color: @card.Color, Cost: @card.Cost, Loyal: @card.Loyal, P: @card.P, Rarity: @card.Rarity, Rules_Text: @card.Rules_Text, Subtype_1: @card.Subtype_1, Subtype_2: @card.Subtype_2, Subtype_3: @card.Subtype_3, T: @card.T, Type: @card.Type } }
    end

    assert_redirected_to card_url(Card.last)
  end

  test "should show card" do
    get card_url(@card)
    assert_response :success
  end

  test "should get edit" do
    get edit_card_url(@card)
    assert_response :success
  end

  test "should update card" do
    patch card_url(@card), params: { card: { CMC: @card.CMC, Card_Name: @card.Card_Name, Color: @card.Color, Cost: @card.Cost, Loyal: @card.Loyal, P: @card.P, Rarity: @card.Rarity, Rules_Text: @card.Rules_Text, Subtype_1: @card.Subtype_1, Subtype_2: @card.Subtype_2, Subtype_3: @card.Subtype_3, T: @card.T, Type: @card.Type } }
    assert_redirected_to card_url(@card)
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete card_url(@card)
    end

    assert_redirected_to cards_url
  end
end
