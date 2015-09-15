#make an hash and push into array.

#new method to add hash item with a quanity.

# new method to remove items from list

#New method to change items

# new method to print list

$list = {}

def add(item, quanity)
  $list[item] = quanity
end

def remove(item)
  $list.delete(item)
end

def update(item, quantity)
  if $list[item]
    $list[item] = quantity
  else
    puts "We don't have #{item} on the list."
  end
end

def print
  $list.each do |key, value|
    puts "You have #{value} of #{key}."
  end
end


add("Lemonade", 2)
add("Tomato", 3)
add("Onion", 1)
add("Icecream", 4)

remove("Lemonade")

update("Icecream", 1)
update("Taco", 2)
print


# What did you learn about pseudocode from working on this challenge?
# Pseudo code helps organizing logic and the direction. So if the logic goes wrong, we will be able to spot it before it turns into actual code, which would be a lot harder to debug.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# Using array will make it very easy to organize the list, but a lot harder to update a specific part of the one of the element.

# What does a method return?
# It will return the last statement in the method if the method does not have a specific return statment.

# What kind of things can you pass into methods as arguments?
# We can pass almost anything into methods as arguments, even a block of codes. We tried to pass in a hash to the method but eventually change the hash to global variable so all methods can access that.

# How can you pass information between methods?
# We can pass information by return objects or by changing the value of the global variable the method interact with.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# Most of the concepts are very clear. The one thing we used is the global variable which makes the whole program very clear and easy to read.