puts "What is the hamsters name?"
hamster_name = gets.chomp
#p hamster_name

puts "On a scale of 1 to 10 with 10 being loud, how noisy is the hamster?"
volume_level = gets.to_i
#p volume_level

puts "What color is this hamster?"
fur_color = gets.chomp
#p fur_color


puts "How old is this hamster?"
age = gets.chomp
if age ==""
	years = nil
else 
	years = age
end
#p years

puts "Is this hamster a good candidate for adoption? Yes or No?"
candidate = gets.chomp
if candidate == "Yes"
	ready = "This hamster is ready for adoption"
	
elsif candidate == "No"
	ready = "Needs more time in sanctuary"
end

p "This hamsters name is #{hamster_name}. On a scale of one to 10 they are a #{volume_level}. #{hamster_name} is #{fur_color} and #{years
} years old. #{ready}."