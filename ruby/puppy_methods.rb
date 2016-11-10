# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(n)
#     n.times do |num|
#       print "WOOF!\n"
#       n
#     end
#     # n.times {print "WOOF!"}
#   end

#   def roll_over
#     print "*rolls over*\n"
#   end

#   def dog_years(human_years)
#     dog_years = human_years / 7
#       print dog_years
#       dog_years
#   end

#   def beg(item)
#     print "Begs for #{item}\n"
#   end

#   def initialize
#     print "Initializing new puppy instance...\n"
#   end
# end

# puppy = Puppy.new

# puppy.fetch("ball")  
# puppy.speak(3)
# puppy.roll_over
# puppy.dog_years(20)
# puppy.beg("Frisbee")

class Car

  def initialize
     # print "Initializing new car instance...\n"
  end

  def drive(miles)
      miles
  end

  def fuel(gas)
     gas
  end

end

car = Car.new

print "How many cars do you wish to inspect?\n"
  total_cars = gets.to_i

# car_list = []
#make init array
init_tag = []
#make as mileage array
mileage = []
#make a gas array
gasoline = []  

while total_cars > 0
  car = Car.new
  car.drive(rand(20))
  car.fuel(rand(100))
total_cars -= 1

  init_tag.push(car = Car.new)
  mileage.push(car.drive(rand(20)))
  gasoline.push(car.fuel(rand(100)))

end

# p init_tag
# p mileage
# p gasoline
# p car_list

p gasoline.each {|gas| puts "You have #{gas} gallons of gas."}
p mileage.each {|mile| puts "You drove #{mile} miles."} 
# car.drive(100)
# car.fuel(0)
# car.fuel(30)








