#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  attr_reader :name
  def initialize
    @name = "Nathan"
  end


end


class Greetings
  def initialize
    @namedata = NameData.new
  end
  def hello
    puts "Hello #{@namedata.name}! How wonderful to see you today."
  end

end

greet = Greetings.new
greet.hello

# Reflection
# Release 1
# What are these methods doing?
# They provides a way to change the instance variables of the same object.
# How are they modifying or returning the value of instance variables?
# They change the values of the instance variables by using instance methods.

# Release 2
# What changed between the last release and this release?
# The age becomes an attr_reader

# What was replaced?
# The code of what_is_age is not needed since age can be accessed directly from outside.

# Is this code simpler than the last?
# This code is simpler.

# Release 3
# What changed between the last release and this release?
# age now is an attr_writer as well.

# What was replaced?
# change_my_age is not needed anymore since the age attribute can be changed directly.

# Is this code simpler than the last?
# Yes.

# What is a reader method?
# Reader method allows direct reading of the instance attribute from outside of the class.

# What is a writer method?
# Writer method allows direct modification of the instance attribute from outside of the class.

# What do the attr methods do for you?
# It provides a way to fast access the instance attribute, at the same time provide safty guard to prevent unintentional mutation of the instance.

# Should you always use an accessor to cover your bases? Why or Why not?
# No. As stated above, sometimes we have to hide the instance attribute or safeguard them for immunity.

# What is confusing to you about these methods?
# They are all very simple and straightforward.