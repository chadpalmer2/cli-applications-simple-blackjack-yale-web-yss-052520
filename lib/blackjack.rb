def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11) + 1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  deal = deal_card + deal_card
  display_card_total(deal)
  deal
end

def hit?(total)
  prompt_user
  input = get_user_input
  case input
    when 's'
      total
    when 'h'
      total += deal_card
      total
    else
      invalid_command
      hit?(total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  initial_round
  until total > 21
    hit?(total)
  end
  end_game
end