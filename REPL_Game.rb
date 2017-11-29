# My Project

# ---------------- methods and global variables----------#
$my_wallet = 0
#  Adds commas to long numbers
#  Outputs a String 
def format_number(number)
  number.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
end

def first_question_feedback(option)
  case option
    when "yes"
      <<~EOF
      Well let's get started! But I don't promise anything...
      This is your wallet 👝, everytime you answer correctly you earn $200,000 💵
      and everytime your answer is incorrect you lose $100,000 💸
      EOF
      second_question

    when "not today"
      puts "\nReally?! Well you can try tomorrow 🤷🏻‍♀️" 
      exit 
  end
end

def second_question
  ask_second_question
  user_second_option = gets.chomp
  second_question_feedback(user_second_option)
end

def ask_second_question
  puts "\n\nWhat year was the Independence of the United States?"
  puts "\nOptions: 1530, 1776, 1886\n\n"
end

def second_question_feedback(option)
  case option
  when "1530"
      puts "\n1530? Were humans around that year? Your 👝 is empty"
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
  when "1776"
      puts "\nWooooow. Are you a History teacher?? That's correct! you earn 200,000 💵"
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}" 
  when "1886"
      puts "\nThat's almost correct, it was 10 years earlier...Your 👝 is empty"
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
  else 
      puts "\nThe game is case sensitive, please try again!" 
      second_question 
  end
  third_question
end

def third_question
  ask_third_question
  user_third_option = gets.chomp
  third_question_feedback(user_third_option)
end

def ask_third_question
  puts "\n\nThat was easy right? Now let's see what you got! Which movie featured the touching romantic quote 'You had me at hello' ?"
  puts "\nOptions: Jerry Maguire, Down With Love, The Graduate\n\n"
end

def third_question_feedback(option)
  case option
  when "Jerry Maguire"
      puts "\nThat's correct! You must be aromantic 😍...you earn 200,000 💵" 
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}" 
  when "Down With Love"
      puts "\nThat is incorrect...I supose you like other genres 🤷🏻‍♀️  "
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
  when "The Graduate"
      puts "\nThat is incorrect...I guess this is too romantic for you 🤷🏻‍♀️  "
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
  else 
      puts "\nThe game is case sensitive, please try again!" 
      third_question 
  end
  fourth_question
end

def fourth_question
  ask_fourth_question
  user_fourth_option = gets.chomp
  fourth_question_feedback(user_fourth_option)
end

def ask_fourth_question
  puts "\n\nHow many countries are in the world? 🌎"
  puts "\nOptions: 295, 150, 195\n\n"
end

def fourth_question_feedback(option)
  case option
  when "295"
      puts "\nYou just discovered 100 countries!! unfortunately that's incorrect..." 
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
  when "150"
      puts "\nThat's so close! but you forgot about the citizens of the rest 45 countries..."
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
  when "195"
      puts "\nThat's correct! are you related to Christopher Columbus?...just wondering 🤷🏻‍♀️  you earn 200,000 💵"
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}"
  else 
      puts "\nThe game is case sensitive, please try again!" 
      fourth_question
  end
  fifth_question
end

def fifth_question
  ask_fifth_question
  user_fifth_option = gets.chomp
  fifth_question_feedback(user_fifth_option)
end

def ask_fifth_question
  puts "\n\nWhich of these zodiac signs is not represented by an animal that grows horns? "
  puts "\nOptions: Capricorn, Aries, Gemini\n\n"
end

def fifth_question_feedback(option)
  case option
  when "Capricorn"
      puts "\nmmm...last time I checked goats 🐐 have horns..." 
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
  when "Aries"
      puts "\nAries is represented by ♈️  wich resembles rams 🐏 horns..."
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
  when "Gemini"
      puts "\nThis is correct! you should become an astrologer 🌌 you earn 200,000 💵"
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}" 
  else 
      puts "\nThe game is case sensitive, please try again!" 
      fifth_question
  end
  sixth_question
end

def sixth_question
  ask_sixth_question
  user_sixth_option = gets.chomp
  sixth_question_feedback(user_third_option)
end

def ask_sixth_question
  puts "\n\nThis is your last opportunity to be a millionare...Which came first the egg 🥚 or the chicken 🐔?"
  puts "\nOptions: The chicken, The egg\n\n"
end

def sixth_question_feedback(option)
  case option
  when "The chicken"
      puts "\nNo one truly knows this 🤷🏻‍♀️  so you earn 200,000 💵"
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}" 
  when "The egg"
      puts "\nNo one truly knows this 🤷🏻‍♀️  so you earn 200,000 💵"
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}"  
  else 
      puts "\nThe game is case sensitive, please try again!" 
      sixth_question
  end
  the_end
end

def the_end
  puts "\n\nWooow that was amazing! you have the spirit of a millionare...
  
  you have #{format_number($my_wallet)} in your wallet 👝 !!! 🎉🎉🎉
  
  but unfortunately I don't have the money 🙍🏻 soooo....
  
  Goodbay! 🏃🏻‍♀️ "
end

#------------------Running The Game----------------#

puts <<~EOF 
  Welcome to my game! 😆
  Do you want to be a millionare? 💰💰
  Options: yes, not today
  EOF

user_option = gets.chomp

first_question_feedback(user_option)