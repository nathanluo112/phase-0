
def pad(array, min_size, value = nil) #non-destructive
  new_array = array
  puts "New array without bracket #{new_array}"
  # new_array = array + []
  # puts "New array with bracket #{new_array}"
  if array.length < min_size
    (min_size - array.length).times do new_array.push(value) end
  end
  return new_array
end

puts pad([1,2,3],5, "apple")


[1..2] do