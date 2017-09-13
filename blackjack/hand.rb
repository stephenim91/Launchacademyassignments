require 'pry'
class Hand
  attr_reader :handsum

  def initialize
    @handsum_array = []
    @handsum = 0
    @ace_count = 0
    @first_ace_check = true
  end

  def addcard(card)
    if card.is_a?(String)
      if @first_ace_check
        @handsum_array << 11
        @first_ace_check = false
      else
        @handsum_array << 1
      end
    else
      @handsum_array << card
    end
    @handsum += @handsum_array[-1]
    if @handsum > 21 && @handsum_array.include?(11)
      @handsum = @handsum - 10
    end
    return @handsum
  end
end
