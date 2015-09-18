# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Number of sides
# Output: sides: number of sides
#         roll: a random number within the range of sides
# Steps:
# initialize: 1. Check the value of sides, if it is not a positive integer, raise and exception
#             2. if the value sides is valid, put the value to the instance variable
# sides: return the instance variable
# roll: return a random number between 1 and the number of sides.


# 1. Initial Solution

# class Die
#   def initialize(sides)
#       raise ArgumentError.new("only positive intergers are allowed") if sides =< 0
#     else
#       @sides = sides
#     end
#   end

#   def sides
#     return @sides
#   end

#   def roll
#     return rand(1, sides)
#   end
# end



# 3. Refactored Solution
class Die
  def initialize(sides)
    raise ArgumentError.new("only positive intergers are allowed") if sides <= 0
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(sides)+1
  end
end


# 4. Reflection
# What is an ArgumentError and why would you use one?
# ArgumentError means there is something wrong with the argument. A general convension is that when the argument does not fit in the required range or number of arguments is not correct. In our case it is the first scenario since we have to make sure the argument is a positive integer.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# The methods are quite simple. Though the rand() method need to be tweak a bit since the return number is between 0 to the argument, including 0 excluding argument.

# What is a Ruby class?
# Ruby class is a blueprint for objects. It describes all the characteristics and behaviors for any instance of the class. In our challenge, Die is a class that has the characteristics of sides, but the number of sides are different depends on the instances, so two different dies can have different number of sides. But they all can tell you how many sides each of them has and they can roll, which are the behaviors defined in the Die class.

# Why would you use a Ruby class?
# It makes building structure(Class) more convenient if we want multiple instance of the same type of object, and make the code more structual and clear.

# What is the difference between a local variable and an instance variable?
# They have different scopes. Local variable is based on methods while instance variable is based on instance/object. Local variable can be accessed within the method; similarly, instance variable can be accessed within the instance.

# Where can an instance variable be used?
# The characteristics for the class can be stored as instance variable. Base on differet characteristics of each instance/object, the behaviors will have different results.
