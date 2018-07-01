require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1 + rand(11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  inputs = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = 0 
  2.times do 
    sum += deal_card
  end
  
  display_card_total(sum)
  return sum
end

def hit?(sum)
  
  prompt_user
  command = get_user_input
  
  if command == "h"
    deal_card
  elsif command == "s"
    return 0
  else 
    return 0
  end
  
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  sum = initial_round
  until sum > 21
    #sum is being added to itself b/c return statements from the #hit method are integers
    addToSum = hit?(sum)
    sum += addToSum
    display_card_total(sum)
  
  end
  end_game(sum)

end
