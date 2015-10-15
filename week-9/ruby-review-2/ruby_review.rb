# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution

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