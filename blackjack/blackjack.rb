require_relative "card"
require_relative "deck"
require_relative "hand"

deck = Deck.new

puts "Welcome to Blackjack\n\n"
scores = []
people = ["Player", "Dealer"]
people.each do |user|
  user_hand = Hand.new
  first_time_check_for_score = true
  first_time_check_for_hit_stand = true
  repeating = true
  lost = false
  while repeating
    user_card = deck.deck.shift
    puts "#{user} was dealt #{user_card}"
    card_value = Card.new(user_card)
    user_hand.addcard(card_value.value)
    if !first_time_check_for_score
      puts "#{user} score: #{user_hand.handsum}\n\n"
      if user_hand.handsum > 21
        if user != "Dealer"
          puts "\nBust! You lose..."
          exit
        else
          puts "\nDealer Busts! You win!"
          exit
        end
        #if there were more than one player, the first exit would become repeating = false
      end
    end
    if repeating
      first_time_check_for_score = false
      if !first_time_check_for_hit_stand
        if user != "Dealer"
          print "Hit or stand (H/S):"
          response = gets.chomp.downcase
          print "\n"
          if response == "s"
            puts "#{user} score: #{user_hand.handsum}"
            repeating = false
          end
        else
          if user_hand.handsum > 17
            puts "Dealer stands."
            repeating = false
          else
            puts "Dealer hits.\n\n"
          end
        end
      end
      first_time_check_for_hit_stand = false
    end
  end
  print "\n\n\n\n"
  scores << user_hand.handsum
end

case
when scores[-1] == scores.max && scores[-1] != scores[-2]
  puts "Dealer wins."
when scores[-1] == scores[-2]
  puts "You tie."
else
  puts "You wins!"
end
