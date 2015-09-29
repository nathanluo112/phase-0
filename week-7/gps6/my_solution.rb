# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Used for linking/loading files' whose location
# is in relative to the current file
# The difference against the require_relative method is that it is a completement to the "require" method that load the built-in ruby extension or libraries.
require_relative 'state_data'

class VirusPredictor
  # Initialize the instance variables of each. Create an instance of the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # Calls two other methods in the VirusPredictor, predicted_deaths and speed_of_spread
  # which call the required instance variables.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end


  # private

# Uses the population density through conditional statements to determine
# the number of predicted deaths and prints a sentence stating how many deaths are predicted in a particular state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 250 then population_density = 200
    # else population_density = @population_density
    # end
    if @population_density/50 > 4
      number_of_deaths = 0.4
    else
      deaths_factors = [0.05, 0.1, 0.2, 0.3, 0.4]
      number_of_deaths = (@population * deaths_factors[@population_density/50]).floor
    end
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Uses the population density to determine how many months it will take to spread across the state.
# Completes the sentence stating how long that will take.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    # The speed of spread is defined in different ranges. Each range covers 50 in density difference starting at 0.
    # Example: 15 density falls in range 0, 50 density falls in range 1, 100 density falls in range 2, etc.
    if @population_density/50 > 4
      speed = 0.5
    else
      speeds = [2.5, 2, 1.5, 1, 0.5]
      speed = speeds[@population_density/50]
    end

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state, property|
  new_state = VirusPredictor.new(state, property[:population_density], property[:population])
  new_state.virus_effects
end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# One is using arrow for pairing, the other syntax is using ":" for paing since the key is a label.

# What does require_relative do? How is it different from require?
# require_relative link the file from the relative path from the current calling file.
# It is a completement of require used for external files for linking/loading.
# require is used for loading built-in Ruby libraries or extensions.

# What are some ways to iterate through a hash?
# We can use .each to iterate the key-value pair or use .each_value to iterate through each value of the hash.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Passing in instance variable for other instance class is useless since the methods can use the instance variable without passing them as argument. The scope of the variables cover the whole class.

# What concept did you most solidify in this challenge?
# The way to call methods and instance variable. Also we spent a long time to figure out the refactoring of the two private methods. They have some interesting behavior because the factors can be obtained in a unified equation.