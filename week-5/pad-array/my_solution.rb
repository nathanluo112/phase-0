# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# pad
# Define a method called pad
# Give it 3 arguments, the third being optional
# IF array.length < min_size
# Define a new variable for the new array called new_array
# Push optional value (min_size - array.length) times into new_array
# Return new array for pad
# ELSE array.length >= min_size RETURN array

# pad!
# Define a method called pad!
# Give it 3 arguments, the third being optional
# IF array.length < min_size
# Push optional value (min_size - array.length) times into array
# Return new array for pad!
# ELSE array.length >= min_size RETURN array

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if array.length < min_size
#   (min_size - array.length).times do array.push(value) end
#     return array
#   else
#   return array
#   end
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = array
#   if array.length < min_size
#     (min_size - array.length).times do new_array.push(value) end
#   end
#   return new_array
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    (min_size - array.length).times { array.push(value) }
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  if array.length < min_size
    (min_size - array.length).times {new_array.push(value)}
  end
  return new_array
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# Yes we break down the problem into small steps. I am not sure if the steps are small enough though. It is a bit hard to judge the scope of the steps.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# It was very easy to translate into code. Each step tells us exactly what needs to be done.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# It didn't pass the error for pad because of the correlation of the array being passed in and the array being return. We used "=" to copy the array but they just point to the same object. It turns out pad is destructive as well.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# We used times for iteration and it is very neat since we have the actual number of times to repeat. But it's not in the refactoring phase.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# The solution is very clean and readable. The only new variable name is the "new_array" being returned and it is quite clear.

# What is the difference between destructive and non-destructive methods in your own words?
# Destructive modifies the original object, whether it is changed or not. Non-destructive on the other hand leave the old object unchanged.
