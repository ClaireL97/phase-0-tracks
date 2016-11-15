# Virus Predictor

# I worked on this challenge [by myself:Claire Lindblom, with: Yancy Zhang].
# We spent [3] hours on this challenge.

# EXPLANATION OF require_relative
# It is a built in method for ruby that allows the program to call upon information from the relative file that is specified.
# Both require and require_relative both load files. The difference is in the path they take to load the file. Require_relative
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
    predicted_deaths
    speed_of_spread
  #commented out the old code to make it more DRY
    # predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
  end

  private 
  #This private method means that code below it can only be accessed inside the class that defines them. This means that the only way
  #these files can run is when called by a method in the same class but outside the private method (example. Virus_effects). If the private tag was
  #Moved above virus_effects in this situation, it would mean that we couldn't call it outside the class (example. current_state.virus_method) would not work.

  #Predicted_deaths method takes the population density of the specified state and depending on the number runs a calculation based
  # on population that is rounded down to the nearest interger and saves it as the variable number_of_deaths. This variable is later
  # printed out using state name and number of deaths.

  def predicted_deaths #(population_density, population, state) removed un-needed arguments
    # predicted deaths is solely based on population density

    #I used a case statement to edit number of deaths without setting it equal manually each time.
    number_of_deaths = case 
        when @population_density >= 200
          (@population * 0.4).floor
        when @population_density >= 150
          (@population * 0.3).floor
        when @population_density >= 100
          (@population * 0.2).floor
        when @population_density >= 50
          (@population * 0.1).floor
        else
          (@population * 0.05).floor
       end

    #Original un-DRY code
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

#The speed_of_spread metod takes the given state and uses the population density variable to determine what the speed of spread difference would be.
#The speed is a variable in months and depending on the density, the speed is increased by a set value. Then the method prints out spread speed.

  def speed_of_spread #(population_density, state)
    #I removed un-needed arguments to make it more DRY

    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    #speed = 0.0 in months (commented this out cause not needed anymore) 

    #After research I found case makes the code more DRY preventing need to type speed = (variable) each time
      speed = case
        when @population_density >= 200
          0.5
        when @population_density >= 150
          1
        when @population_density >= 100
          1.5
        when @population_density >= 50
          2
        else
          2.5
      end
    #Original un-DRY code
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
STATE_DATA.each do |state|
  #p state
  current_state = state[0]
  current_state = VirusPredictor.new(current_state,STATE_DATA[current_state][:population_density],STATE_DATA[current_state][:population])
  current_state.virus_effects
  end

# #Original Driver Code
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects



#=======================================================================
# Reflection Section
=begin

What are some differences between the two different hash syntaxes shown in the state_data file?
  The difference was in the key syntax. The hashy hash (or biggest hash containing all the small hashes) was set equal to the
  brackets with all the other hashes inside. The keys for the large hash were also the hash variable names for the small hashes.

What does require_relative do? How is it different form require?(copying the response we talked about earlier in the program)
  It is a built in method for ruby that allows the program to call upon information from the relative file that is specified.
  Both require and require_relative both load files. The difference is in the path they take to load the file. Require_relative
  goes to the specified location while require searches though a list of bash profile variables that lists location.

What are some ways to iterate through a hash?
  A few ways to iterate through a hash is a loop where the index goes up once each time and then until the index = the hash length, it
  keeps going through and running the needed loop. The other way is the method I used. I used the built in method each to call each
  part of the method and set it to the variable of state. Then I used state as seen on line 121

When refactoring virus_effects, what stood out to you about the variables if anything?
  It stood out to me that what was called was the two private methods and what they returned were the variables that were given at the end
  of each of the methods. It also stood out to me that before I made the code more DRY, it kept calling the attributes each time when the
  attributes didn't need to be called as arguments. I was able to simplify because I noticed this.

What concept did you most solidify in this challenge?
  This challenge there were actually two concepts I solidified and so picking one is hard. First was classes and how things can be run from
  them. I had no idea about what it did before today and I found that very interesting. While that was a general review, the other thing 
  that was solidified was what non-DRY code was and how I could edit the class and driver code to make it more DRY. This came from knowing how
  class methods worked along with exactly what each part of my code did.

=end
