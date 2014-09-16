require "spec_helper"
require "deck"

describe "deck of cards" do
  before do
    @deck = Deck.new
  end

  it "makes a deck" do
   @deck.must_be_instance_of Deck
 end

 it "has 52 cards" do
   @deck.size.must_equal 52
 end

 it "has 13 of each suit" do
  (0..12).each { |n|
    @deck.card[n].suit.must_equal "Spades"
  }
  (13..25).each { |n|
    @deck.card[n].suit.must_equal "Hearts"
  }
  (26..38).each { |n|
    @deck.card[n].suit.must_equal "Clubs"
  }
  (39..51).each { |n|
    @deck.card[n].suit.must_equal "Diamonds"
  }
end

it "should not be empty" do
  @deck.size.wont_be_nil
end

it "should display a valid card" do
  @deck.card[0].what_card.must_equal "This is the Ace of Spades."
end

it "should not display invalid cards" do
  @deck.card[4].what_card.wont_equal "This is the 3 of Hearts."
end
end
