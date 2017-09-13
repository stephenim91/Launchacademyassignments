class Card
  attr_reader :value

  def initialize(string_of_value_and_suit)
    @value_array = string_of_value_and_suit.split("")
    @value_array.pop
    @first_half = @value_array.join
    if @first_half == "A"
      @value = "ace_logic"
    elsif @first_half == "J" || @first_half == "Q" || @first_half == "K"
      @value = 10
    else
      @value = @first_half.to_i
    end
  end
end
