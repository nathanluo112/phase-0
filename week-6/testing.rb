# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A maximum value, in the form of an integer
# Output: A number between 0 and the maximum value (including the maximum value)
# Steps:
# 1. User is prompted to enter in an integer, which will become the maximum value in a range between 0 and the number provided by the user.
# 2. A random number is pulled from the range, which becomes the answer
# 3. User is prompted to enter an integer in an attempt to guess the answer
# 4. If the guess is greater than answer, return :high. If the guess is less than answer, return :low. If the guess is correct return :correct.
# 5. Once correct answer has been guessed, return number of attempts it took for user to return :correct


# Initial Solution

class GuessingGame
  def initialize

    @solved = false
    @guess_count = 0

    puts "Welcome to Guess the Number"
    puts "*Where the only prize is the self-satisfaction found in consistently guessing using fewer attempts than your own personal best*"
    puts "The difficulty of the game is up to you. Please enter a number indicating the maximum value in the range you can guess from (i.e. enter a lower number to make the game easier, a higher number to challenge yourself more)"
    maximum_value = gets.to_i
    @range = *(1..maximum_value)
    range_randomize
  end

  def range_randomize
    @answer = @range.sample
    guess_prompt
  end

  def guess_prompt
    puts "I have selected the answer. Give me your best guess."
    @guess = gets.to_i
    guess_test
  end

  def guess_test
#   while @guess != @answer
   if @guess.to_i > @answer
      @guess_count+=1
      :high
      puts "Not quite, your answer is too low"
      guess_re_prompt

    elsif @guess < @answer
      @guess_count+=1
      :low
      puts "Nope. Your answer is too high"
      guess_re_prompt
    else
      @guess_count+=1
      :correct
      puts "Woohoo! You guessed it"
      puts "It took you #{@guess_count} guess(es) to win this round"
    end

      solved?
  end

  def guess_re_prompt
    puts "Try again."
    @guess = gets.to_i
    guess_test
  end


  def solved?

      @solved = true if @guess == :correct

  end


end

new_game = GuessingGame.new



# Refactored Solution

#nil




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#   -I have no idea what this question is asking
# When should you use instance variables? What do they do for you?
#   -Instance variables are accessible throughout the class, meaning they can be defined in the first method and used in every single method until the end
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# -I have previously only written methods within a class that move in a linear fashion, from initialist to method_1, to method_2, to method_3, etc. This time I wanted my guess_test method to refer to the guess_prompt (or guess_re_prompt) over and over again until the user guesses the correct answer. Emmanuel said I should look into recursion and read up on that.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#   -The immutability of symbols is a benefit here because if I write my code incorrectly the meaning of :correct can never be changed. It will always mean what it is originally defined as.