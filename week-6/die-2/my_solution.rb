# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: sides: Integer
#         roll: a string
# Steps:
# 1. Check intitialize argument
# 2. Copy the input array into an instance variable array
# 3. return the length of the instance variable for sides
# 4. Randomly pick an element from the instance variable


# Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("Sides of the die cannot be empty") if labels.length < 1
    @sides = labels.dup
  end

  def sides
    @sides.length
  end

  def roll
    @sides.sample
  end
end



# Refactored Solution








# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The main differences is the input of the initialization and thus the storage unit in the class.
# The instance variable is a copy of the input array instead of an integer. Logic is mostly the same but the appearance changes quite a lot.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# Using the right data structure and built-in methods can simplify the code a lot.

# What new methods did you learn when working on this challenge, if any?
# There is no new method being used in this challenge.

# What concepts about classes were you able to solidify in this challenge?
# The idea of instance variable is solidify. Ideally they are not accessable from outside of the class so they are protected.