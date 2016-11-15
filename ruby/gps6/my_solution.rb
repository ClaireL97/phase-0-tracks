# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# It is a built in method for ruby that allows the program to call upon information from the relative file that is specified.
# Both require and require_relative both load files. The difference is in the path they take to load the file. Require_relative goes to
# goes to the specified location while require searches though a list of bash profile variables that lists location.

require_relative 'state_data'

class VirusPredictor

  #Initalize method defines the class attributes.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Virus_effects method calls the other two methods and runs them with the specified attributes.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  #Predicted_deaths method takes the population density of the specified state and depending on the number runs a calculation based
  # on population that is rounded down to the nearest interger and saves it as the variable number_of_deaths. This variable is later
  # printed out using state name and number of deaths.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
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

#The speed_of_spread metod takes the given state and uses the population density variable to determine what the speed of spread difference would be.
#The speed is a variable in months and depending on the density, the speed is increased by a set value. Then the method prints out spread speed.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state|
  #p state
  current_state = state[0]
  current_state = VirusPredictor.new(current_state,STATE_DATA[current_state][:population_density],STATE_DATA[current_state][:population])
  current_state.virus_effects
end





alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

1


#=======================================================================
# Reflection Section