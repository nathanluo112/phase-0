# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  array_3=[]
  array_1.each{|element| array_3<<element}
  array_2.each{|element| array_3<<element}
  return array_3
end