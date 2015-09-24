# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer with 16 digits
# Output: true or false as to whether it's a valid credit card
# Steps:
# Create a class CreditCard
#   Initialize with ArgumentError if it's not 16 digits
#     Store the number into an instance variable

#   Perform a check:
#     Convert to string
#     Split the string
#     Convert the resulting array to integers
#     Double every other digit starting with the second one from the end
#     Convert to strings
#     Combine into one string
#     Split into individual characters
#     Convert to integers
#     Add all the digits (array elements)
#     Mod 10 of the sum
#   Return true if equal to 0, return false if otherwise

# class CreditCard
#   def initialize(number)
#     if number.to_s.length != 16
#       raise ArgumentError.new ("This is not 16 digits.")
#     end
#     @number = number
#   end

#   def check_card
#     card_num_str = @number.to_s
#     card_num_array = card_num_str.split("")
#     card_num_array.map! {|digit| digit.to_i }
#     idx = 0
#     while idx < card_num_array.length
#       card_num_array[idx] *= 2
#       idx += 2
#     end
#     card_num_array.map! {|num| num.to_s}
#     card_num_str = card_num_array.join("")
#     card_num_array = card_num_str.split("")
#     sum = card_num_array.map!{|num| num.to_i}.reduce(:+)
#     if sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end

# end



# Refactored Solution
class CreditCard
  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new ("This is not 16 digits.")
    end
    @number = number
  end

  def check_card
    card_num_array = @number.to_s.split("").map! {|digit| digit.to_i }
    card_num_array.each_index {|num_index| card_num_array[num_index] *= 2 if num_index.even?}

    card_num_array = card_num_array.map! {|num| num.to_s}.join("").split("")
    sum = card_num_array.map! {|num| num.to_i}.reduce(:+)
    return true if sum % 10 == 0
    return false
  end

end

# Reflection
# What was the most difficult part of this challenge for you and your pair?
# The conversion between integer and string repeats quite a lot of times. We missed a conversion at the end for summation. After inserting debug statement at each step, we figured out the problem.

# What new methods did you find to help you when you refactored?
# The enumerable each_index helps to simplify the while loop into a one-line code. It keeps the logic and readability of the original code.
# Also the reduce enumerable helps to do the summation instead of using normal "each" iteration.

# What concepts or learnings were you able to solidify in this challenge?
# Spliting the task into smaller steps are very important and helpful. And the initial solution that directly translated from the pseudocode makes debugging very clear. We were able to spot the problem after small step debugging.