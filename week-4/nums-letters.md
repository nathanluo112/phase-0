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


**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**
Ruby keeps the variable type the same throughout the operation. Division clearly reflects this property as the result will be rounded down to the closest integer if the two numbers being divided are integers.

**What is the difference between integers and floats?**
Integer is a number without decimal point. That being said, the resolution of integer is set to 1. Floats on the other hand is a number without a set resolution, so they can have decimal.

**What is the difference between integer and float division?**
As stated above, integer division will result in integer, whereas float division will return float.

**What are strings? Why and when would you use them?**
Strings are series of characters stored in "String" container.

**What are local variables? Why and when would you use them?**
Local variable is a very important concept on Object Oriented Language. It allows the program to function as if there is an actual object to interact with even there is no concrete data. Local variables are the objects in this senario.

**How was this challenge? Did you get a good review of some of the basics?**
This is a great review on the most basic ruby concept. Though rspec could be a bit complicated to setup using different methods.

[Basic Math:](./basic-math.rb)
[Defining Variables:](./defining-variables.rb)
[Simple String:](./simple-string.rb)