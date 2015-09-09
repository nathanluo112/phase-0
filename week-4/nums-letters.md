**What does puts do?**
puts returns nil and prints the output to the console with a new line.

**What is an integer? What is a float?**
An integer is an number without decimal where a float is the opposite. For example 2 is an integer and 2.0 is a float. Integer is the basis for Bignum and Fixnum, which are types of classes in Ruby.

**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**

Integer division will automatically round down the result to the closest integer whereas float division will return the number with decimal.



```
def hour_in_year
  p(365*24)
end

def min_in_decade
  p(10*365*24*60)
end
```
