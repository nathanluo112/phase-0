# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution

def my_array_finding_method(array, letter)
  array.select do |x|
   x if x.class == String && x.include?(letter)
 end
end

def my_hash_finding_method(hash, num)
  new_array = []
    hash.each do |key, value|
     new_array << key if value == num
   end
  new_array
end




# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! do |element|
    if element.class == Fixnum
      element += thing_to_modify
    else
      element = element
    end
  end
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each do |key, value|
    source[key] += thing_to_modify
  end
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(array)
  return array.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(my_family_pets_ages)
  my_family_pets_ages.sort_by {|key,val| val}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |word|
    if word.class != Fixnum && word.include?(thing_to_delete)
      source.delete(word)
    end
  end

end


########################################
#   begin
#   source.delete_if { x.include?(thing_to_delete)}
#   rescue
#     next
#   end


# end




############################################
def my_hash_deletion_method!(source, thing_to_delete)
  source.dup

  source.delete_if { |key, value| key == thing_to_delete }
end


# Person 5
def my_array_splitting_method(source)
  new_array = Array.new(2){Array.new}
  source.each do |element|
    if element.class == Fixnum
      new_array[0] << element
    else
      new_array[1]<<element
    end
  end
  return new_array
end

def my_hash_splitting_method(source, age)
  new_array = Array.new(2){Array.new}
  source.each do |key, value|
    if value <=age
      new_array[0] <<[key, value]
    else
      new_array[1] <<[key, value]
    end
  end
  return new_array
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#