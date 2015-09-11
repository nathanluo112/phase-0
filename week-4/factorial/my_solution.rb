# Factorial

# I worked on this challenge [by myself, with: ].

#Psuedocode
#check if the parameter is 0, if true, return 1 otherwise...
#1. create a variable to hold to result set to 1
#2. take in the parameter and multiply it by the result, and store as the new result
# 3. subtract 1 from the parameter then repeat step 2.
#4. stop when the altered parameter becomes 1
#5. return result


# Your Solution Below
def factorial(number)
  return 1 if number == 0

  result = 1
  while number > 1
    result = result * number
    number -= 1
  end

  result
end