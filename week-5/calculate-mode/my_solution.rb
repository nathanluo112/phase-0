# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Input: An array
# Output: An array of the most frequently occuring elements
# To solve:
# 1. Go through each item and see how many times it appears in the array
# 2. Remember how many times each one appears
# 3. Record the frequency in a key/value pair, frequency as the value
# 4. Put the keys with the maximum value in the new array
# 5. Return the new array



# 1. Initial Solution
# def mode(array)
#   new_array = []
#   words_freq = {}
#   max = 0
#   array.each do |i|
#     if words_freq.include?(i)
#       words_freq[i] += 1
#     else
#       words_freq[i] = 1
#     end

#     if max < words_freq[i]
#       max = words_freq[i]
#     end
#   end

#   words_freq.each do |key, value|
#     new_array << key if value == max
#   end
#   return new_array
# end


# 3. Refactored Solution
def mode(array)
  new_array = []
  words_freq = Hash.new(0)
  max = 0
  array.each do |i|
    words_freq[i] += 1
    if max < words_freq[i]
      max = words_freq[i]
    end
  end
  words_freq.each {|key, value| new_array << key if value == max}
  return new_array
end



# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# We decided to use Hash. Because we need some sort of memory to store the number of occurance but not so much of the sequence the occurance happens.
# Technically speaking, array would work but a lot more complicated. Hash is perfect for this challenge because we can use elements as the keys.
# Since keys cannot be duplicated in the Hash, when multiple occurance happens, we can just update the corresponding value.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Yes, though the sequence is a little bit different. First we explained the big picture: what we need to accomplish the task. Then we broke each step into smaller steps.

# What issues/successes did you run into when translating your pseudocode to code?
# We forgot to memorize the max_occurance in our pseudo code. When trying to collect the data again from hash, we realize the need for this object.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We use .each to iterate through the content. I tried to use collect but it would become too complicated. It was quite easy to implement the iteration.