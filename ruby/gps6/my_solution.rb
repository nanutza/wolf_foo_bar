# Virus Predictor

# I worked on this challenge [with: Wellington - guide  ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#link with another file the directory declaring the relative path.
#require needs the full path or url

class VirusPredictor

# this method defines and initialized instance variables and assign them to thier respective parameters.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# this method calls the other two private methods: predicted_deaths, speed_of_spread
  def virus_effects
    number_of_deaths = predicted_deaths
    speed = speed_of_spread
    print_results(number_of_deaths, speed)

  end

  private

  def print_results(number_of_deaths, speed)
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    puts " and will spread across the state in #{speed} months.\n\n"
  end

# this method takes three parameter and returns number_of_deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #this method calculates the speed of the spread based on population density

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

    # puts " and will spread across the state in #{speed} months.\n\n"

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


# STATE_DATA.each do |state, hash|
#   VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects
# end

STATE_DATA.each do |state, hash|
    VirusPredictor.new(state, hash[:population_density], hash[:population]).virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The hash rocket is used for strings                -  hash = {"key" => value}
# in the simplified syntax the key becomes a symbol  -  hash = {key : value}

# What does require_relative do? How is it different from require?
# require_relative references a file within the same directory.
# require needs to have a full path to the file being used.

# What are some ways to iterate through a hash?
# Using .each you can iterate through keys, values, or both keys and values.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The instance variables were already called through the initialize
# method so they were already available to methods within the class, and it was not necessary to pass them as arguments.

# What concept did you most solidify in this challenge? 
# 1) the two syntaxes to represent a hash: and the usefulness of symbols
# 2) the scope of variables
# 3) new: the introduction of "private methods" and "Constants" as global elements.