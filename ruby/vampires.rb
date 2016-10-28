puts "What is your name?"
name = gets.chomp
#p name
puts "How old are you?"
age = gets.chomp

puts "What year were you born in?"
year = gets.to_i

current_year = 2016
#p current_year

#update this later in order to subtract the current year from the given year to get a new variable to compare to age
#year_diff = current_year-year
#p year_diff

#if year_diff != age
	#correct_age = false
#elsif year_diff == age
 	# year_diff == age
	#correct_age = true
#end

#puts correct_age


puts "Our company cafeteria serves garlic bread. Should we order some for you? Yes or No?"
bread_pref = gets.chomp
if bread_pref == "Yes"
	garlic = true
elsif bread_pref == "No"
	garlic = false
end

p garlic

puts "Would you like to enroll in the company's health insurance? Yes or No?"
h_insurance = gets.chomp

if h_insurance == "Yes"
	insurance = true
elsif h_insurance == "No"
	insurance = false
end
	


#if correct_age && (garlic||insurance)
#	puts "probably not a vampire"

#elsif correct_age && (garlic||insurance)
#	puts "Might be a vampire"
	
#else 
#	puts ""
#end
	











puts "Actually, never mind! What do these questions have to do with anything? Lets be friends."