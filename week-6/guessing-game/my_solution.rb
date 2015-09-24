# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     # Your initialization code goes here
#     raise ArgumentError.new("answer does not match requirement") if answer.nil? || answer.class != Fixnum
#     @answer = answer
#   end

#   def guess(num)
#     if num < @answer
#       return @last_answer = :low
#     elsif num > @answer
#       return @last_answer = :high
#     end
#     return @last_answer = :correct
#   end

#   def solved?
#     return true if @last_answer == :correct
#     false
#   end
# end




# Refactored Solution
class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    raise ArgumentError.new("answer does not match requirement") if answer.nil? || answer.class != Fixnum
    @answer = answer
  end

  def guess(num)
    return @last_answer = :correct if num == @answer
    num < @answer ? @last_answer = :low : @last_answer = :high
  end

  def solved?
    return true if @last_answer == :correct
    false
  end
end


# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables are the characteristics of the object. They store the properties that identify it from other kinds of object. Methods specify the behaviors of the object.
# For example, bikes is a type of object. They all have similar behaviors: able to move in a certain speed, the seat's height is adjustable, etc. These behaviors can be stored/described in methods. But each bike can have different height, materials, number of wheels, seats, handles. Storing them in instance variables can specify each of them.

# When should you use instance variables? What do they do for you?
# When we need to specify an object, an actual instance of a specific type of object, we use instance variable to store its characteristics that differentiate them from other objects of the same type.
# They stores the properties of the instance.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# I had no problem using it. Flow control requires understanding of different conditions, and identify the best way to separate them.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Symbols are unique. Since the symbols has already been made, each time returning a symbol, the program will simply recall the one of the pre-made symbols instead of creating a new one. They can be reused from the outside of the class. This cannot be achieved by string since string cannot persist outside of the scope.