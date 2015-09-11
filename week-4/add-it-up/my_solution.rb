# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

## 0. total Pseudocode

# Input: Array of integers
# Output: A single integer
# Steps to solve the problem.
# Create a result object equal zero
#Add the result to the second element in the array, set this as the new result
#Continue until there are no more elements


# 1. total initial solution
# def total (numbers)
# result = 0
# numbers.each do|num|
# result += num
# end
# result
# end


# 3. total refactored solution
def total (numbers)
  result = 0
  numbers.each do|num|
  result += num
  end
  result
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:Array of words(strings)
# Output:Single sentence(string)
# Steps to solve the problem.
#Create a result object equal "" (empty string)
#Append each element into the result object with a space in between
#Continue until there are no more elements
#Take the result and substitute the last character for a period (it was a space before)
#capitalize the first letter of the result string using ruby method .capitalize and return result


# 5. sentence_maker initial solution
def sentence_maker (words)
  result = ""
  words.each do|word|
  result << (word.to_s << " ")
  end
  result[-1] = "."
  result.capitalize
end



# 6. sentence_maker refactored solution

