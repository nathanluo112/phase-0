# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.
@leftover = {
  "cookie" => 0,
  "cake" => 0,
  "pie" => 0
}

@library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
def serving_size_calc(item_to_make, order_quantity)

  # ------------  Checking if the input is valid ---------
  # error_counter = 3

  # library.each do |food|
  #   if library[food] != library[item_to_make]
  #     p error_counter += -1
  #   end
  # end

  # if error_counter > 0
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end
  raise ArgumentError.new("#{item_to_make} is not a valid input") if not @library.include?(item_to_make)

 # ------------------ Determine total pieces of items to make     ----------------------
  # serving_size = library.values_at(item_to_make)[0]
  # serving_size_mod = order_quantity % serving_size

  # case serving_size_mod
  # when 0
  #   return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  # else
  #   return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  # end
  serving_size = @library[item_to_make]
  actual_quantity_need = order_quantity - @leftover[item_to_make] # 14
  # puts "Quantity needed #{actual_quantity_need}"
  serving_size_mod = (actual_quantity_need ) % serving_size # 14 % 7 = 0
  # puts serving_size_mod
  serving_quantity = (actual_quantity_need )/serving_size # 14 / 7 = 2
  # puts "serving quantity #{serving_quantity}"
  serving_quantity += 1 if serving_size_mod > 0
  # @leftover[item_to_make] = 0
  @leftover[item_to_make] = serving_quantity * serving_size - actual_quantity_need
  return "Calculations complete: Make #{serving_quantity} of #{item_to_make}"

  # ---------------------------------------------
end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)
p serving_size_calc("pie", 6)
p serving_size_calc("pie", 21)

p @leftover

#  Reflection

# What did you learn about making code readable by working on this challenge?
# Code readability depends on how clear the logic is, and variable naming.
# To make the logic clearer, it is very beneficial if the code is close to normal speaking language description.
# So it would be very clear if one can simply translate the code back to the speaking language with little effort. Name is is also a way to make the translation step easier.

# Did you learn any new methods? What did you learn about them?
# The values_at is a new way of accessing data in hash. It returns the result in an array, even though there is only 1 element in it.

# What did you learn about accessing data in hashes?
# values_at allows retrieving multiple answers at the same time in an array. Single access version is simply hash[key]

# What concepts were solidified when working through this challenge?
# The division of steps and naming of variables are very important.
# Divide the code into small steps and put the frequently used values in a variable can help debugging at tiny steps.
# That can help us to determine where the error happens.
# Naming variable in a descriptive way can help building logics.
# We encounter a lot of difficulties when implementing the left over feature since we made a mistake at determining how to calculate the final leftover.
# In the end, the left over quantity is the total amount being made minus the total amount needed. I translated this logic into code to fix the problem.