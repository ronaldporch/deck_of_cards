class Card
attr_accessor :suit
attr_accessor :value

def initialize(suits, values)
@suit = suits
@value = values
end

def what_card
"This is the #{value} of #{suit}."
end
end

class Deck < Card
attr_accessor :card

def initialize
@card = []
suits = ["Spades", "Hearts", "Clubs", "Diamonds"]
values = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]
suits.each {|suits|
  values.each {|values|
    @card.push(Card.new(suits, values))
  }
}
end

def size
@card.length
end

def play_hand
hand = []

(1..5).each {|card|
passed_card = @card[Random.new.rand(@card.length)]
hand.push(passed_card)
puts "I have pulled the #{passed_card.value} of #{passed_card.suit}."
@card.delete(passed_card)
}
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
