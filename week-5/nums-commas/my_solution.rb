# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Integer
# What is the output? (i.e. What should the code return?) String
# What are the steps needed to solve the problem?
# Step 1: Turn integer into a string representation
# Step 2: Create an empty string.
# Step 3: Move character from the numerical string to the empty string from right to left. Every 3rd character check if the original string still has characters, if so then add a comma in the second string. If not then end the loop.
# Step 4: return the new string.

# 1. Initial Solution
# def separate_comma(num)
#   result = ""
#   counter = 1
#   while num_s.length > 0
#     n = num_s.pop
#     result.unshif(n)
#     counter +=1
#     result.unshif(",") if counter == 3
#   end
# end



2. Refactored Solution
def separate_comma(num)
  num_s = num.to_s
  result = ""
  index = -1
  three_counter = 0
  while index >= -num_s.length
    result = (num_s[index]) + result
    three_counter +=1
    if three_counter == 3 && num_s[index-1]
      result = "," + result
      three_counter = 0
    end
    index -= 1
  end
  result
end

# def separate_comma(num)
#   num_s = num.to_s
#   length = num_s.length
#   number_of_commas = length/3
#   starting = length%3
#   if starting == 0
#     number_of_commas -=1
#     starting = 3
#   end
#   while number_of_commas > 0
#     num_s.insert(starting, ",")
#     number_of_commas -=1
#     starting += 4
#   end
#   num_s
# end


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# I use the most basic counting approach to solve this problem: count from left to right and add a comma for every 3 character and if there is a 4th one. I consider solving it using a more mathematical approach be figure it will be more complicated in terms of calculation. In the end I did add another way to solve the problem, though it's not as intuitive as the original one.

# Was your pseudocode effective in helping you build a successful initial solution?
# Yes, but my pseudocode is not detail enough. I am having trouble in how much detail I need to write in pseudo code.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# to_s to change the number to string, and using index instead of pop and unshif because it is not an array. It my be easier to solve in array and reformat the result into string. The general direction is the same though.

# How did you initially iterate through the data structure?
# I was trying to use destructive method to iterate through the data from end to beginning, but was not successful because pop cannot be used on string.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# My initial solution doesn't work and my final solution seems a bit confusing. But adding comment should make it more clear.
