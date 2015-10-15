# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

def super_fizzbuzz(array)
  new_arr = array.dup
  new_arr.map do |num|
    if num%15==0
      num='FizzBuzz'
    elsif num%3==0
      num='Fizz'
    elsif num%5 == 0
      num='Buzz'
    else
      num=num
    end
  end
end



# Refactored Solution






# Reflection