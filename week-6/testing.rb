

nested_array = [1, ["inner", "array"], 2, 3]

nested_array.each { |element| puts element}

nested_hash = {:outer_key => {:inner_key => "Winner!"}}
puts nested_hash[:outer_key]