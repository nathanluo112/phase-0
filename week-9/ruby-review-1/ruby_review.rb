# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#1. Define a method that takes as its input a string of words.
#2. Output all words into reverse order.
#3. Separate each word in the string.
#4. Print the reversed sentence.


# Initial Solution
def reverse_words(string)
  words = string.split(" ")
  words.map! {|element| element.reverse}
  words.join(" ")
end

# def is_fibonacci?(num) #8
#   counter = 1
#   until fibonacci(counter)>=num
#     if (fibonacci(counter))<num
#      counter +=1
#     end
#   end
#   return fibonacci(counter) == num

# end

# def fibonacci(num_of_f) #num_of_f = index + 1
#   if num_of_f ==2
#     return 1
#   elsif num_of_f == 1
#     return 0
#   else
#     return fibonacci(num_of_f-1) + fibonacci(num_of_f-2)
#   end
# end



# Refactored Solution
require 'bigdecimal'
def is_fibonacci?(num) #8
  num = BigDecimal.new(num)
  ps1 = (5* num**2 + 4).sqrt(0)
  ps2 = (5* num**2 - 4).sqrt(0)
  return  ps1%1 ==0 || ps2%1 == 0
end




# Reflection
# What concepts did you review in this challenge?
# We reivew the array, string conversion, iterator on the first challenge
# We used bigdecimal and sqrt for the second challenge and review the type of ruby object

# What is still confusing to you about Ruby?
# So far most of the concepts and syntax are quite clear for me

# What are you going to study to get more prepared for Phase 1?
# I am going to go through most of the review and new concepts of the ruby section.
# Also I would review the iterators since they are very handy and tricky to use.