
# Virus Predictor

# I worked on this challenge with Sami Zhang / Matthew Higgins.
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Require_relative is useful for loading data from another file that is located  within the same directory as the current file.#'Require' is useful for loading content from a file located elsewhere on your computer.

require_relative 'state_data'

class VirusPredictor
  #Creating instance variables for VirusPredictor
  #It takes three arguments: state_of_origin, population_density, population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Take in the instance methods and returns the result of both predicted_deaths and speed_of_spread


  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private #Makes predicted_deaths and speed_of_spread works internally only

  def predicted_deaths
    # predicted deaths is solely based on population density
    #we felt this code was very readable and did not need to be refactored
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor #round down the float number into an integer
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    print " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each_pair do |k, v|
  VirusPredictor.new(k, STATE_DATA[k][:population_density], STATE_DATA[k][:population])
  .virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# #alabama.virus_effects

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section
#