class Deck
  attr_accessor :deck
  
  def initialize
    value = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
    suit = ["♠", "♥", "♦", "♣"]
    @deck = []
    suit.each do |suit|
      value.each do |value|
        @deck << "#{value}#{suit}"
        @deck.shuffle!
      end
    end
  end
end
