# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase || The error occurs in errors.rb, on line 8. It's a syntax error. It says it does not expect "=" but rather an $end. This is caused by the wrong sequence of the variable assignement.
cartmans_pharse = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
#171
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpeced end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# Line 14
# 6. Why did the interpreter give you this error?
# Method missing an end

# --- error -------------------------------------------------------

# south_park = 0

# 1. What is the line number where the error occurs?
# 37
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# The phrase "south_park" is the error
# 4. Where is the error in the code?
# Line 37 south_park
# 5. Why did the interpreter give you this error?
# The phrase is undefined.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 52
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
# Line 52 cartman()
# 5. Why did the interpreter give you this error?
# The method is not defined

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 67
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# Line 67
# 5. Why did the interpreter give you this error?
# The method being used doesn't accept any argument but passed in 1 argument, thus the (1 of 0) information above.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# 86
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# 90
# 5. Why did the interpreter give you this error?
# Method requires 1 argument but being used without any



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 107
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# 111
# 5. Why did the interpreter give you this error?
# The method needs 2 arguments but only received 1 as a full string

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 126
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# '*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# multiplying number by string
# 5. Why did the interpreter give you this error?
# a number cannot be multiply by "string" times

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# '/': divided by 0
# 4. Where is the error in the code?
# 141, number divided by 0
# 5. Why did the interpreter give you this error?
# number cannot be divided by 0

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load file
# 4. Where is the error in the code?
# 157, file being load didn't exist
# 5. Why did the interpreter give you this error?
# trying to load a non-existing file


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
# The 2nd error is the most difficult to read since the line number is not a direct reflection on the actual error occurance.

# How did you figure out what the issue with the error was?
# By answering the questions, I was able to locate and understand the type of the errors, which then solve the errors accordingly.

# Were you able to determine why each error message happened based on the code?
# Yes. They are very straighforward.

# When you encounter errors in your future code, what process will you follow to help you debug?
# I will follow the same process in this challenge. Find the location of the errors, look for corelations, and then identify the type of errors, then try to understand what causing the errors.
