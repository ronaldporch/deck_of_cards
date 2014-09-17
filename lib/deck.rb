# Class Card
class Card
  attr_accessor :suit
  attr_accessor :value

  def initialize(s, v)
    @suit = s
    @value = v
  end

  def what_card
    "This is the #{value} of #{suit}."
  end
end

# Class Deck
class Deck
  attr_accessor :card

  def initialize
    @card = []
    suits = %w(Spades Hearts Clubs Diamonds)
    values = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King']
    suits.each do |s|
      values.each do |v|
        @card.push(Card.new(s, v))
      end
    end
  end

  def size
    @card.length
  end

  def play_hand
    hand = []

    (1..5).each do
      passed_card = @card[Random.new.rand(@card.length)]
      hand.push(passed_card)
      puts "I have pulled the #{passed_card.value} of #{passed_card.suit}."
      @card.delete(passed_card)
    end
  end
end

deck = Deck.new
puts deck.size
puts deck.card[0].suit
puts deck.card[0].value
puts deck.card[1].suit
puts deck.card[1].value
puts deck.card[43].suit
puts deck.play_hand
puts deck.size
