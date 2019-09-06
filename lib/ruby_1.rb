require "ruby_1/version"

module Ruby1
  class Error < StandardError; end
  puts "Welcome to 'Get My Number!'"
  
  #get name 
  print "What's your name?"
  input = gets 
  name = gets.chomp 
  puts "Welcome, #{name}!"
  
  #store random number for player to guess
  puts "I've got a random number between 1 and 100"
  puts "Can you guess it?"
  target = rand(100) + 1
  
  #track number of guesses
  num_guesses = 0
  
  #track whether the player has guessed correctly
  guessed_it = false 
  
  until num_guesses == 10 || guessed_it
  
  puts "You've got #{10 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i 
  
  num_guesses += 1 
  
  #compare the guess to the target
  #print the appropriate message
  if guess < target 
    puts "Oops.  Your guess was too LOW."
  if guess > target
    puts "Dangit.  Your guess was too HIGH."
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true 
  end 
end 
  
    
end
