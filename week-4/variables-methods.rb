def full_name_greeting
  puts("What's your first name?")
  first_name = gets.chomp
  puts("What's your last name?")
  last_name = gets.chomp
  puts("What's your middle name?")
  middle_name = gets.chomp
  puts("Hello, #{first_name} #{middle_name} #{last_name}")
end

def better_num
  puts("What's your favorite number?")
  num = gets.chomp.to_i
  puts("#{num+1} is a bigger and better number!")
end


# How do you define a local variable?
# To define a local variable, simply type in the name for the variable. Assigning an initial value is optional.

# How do you define a method?
# Use the keyword "def" followed by the method name to define a method.

# What is the difference between a local variable and a method?
# A local variable is a single object, whereas a method is a block of code.

# How do you run a ruby program from the command line?
# Use the command "ruby" followed by the ruby file name to run the program

# How do you run an RSpec file from the command line?
# Similar to ruby, use "rspec" followed by the spec file to run RSpec file from the command line.

# What was confusing about this material? What made sense?
# The material is pretty straighforward. I followed a long with no problem.