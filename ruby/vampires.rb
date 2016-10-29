puts "What is your name?"
name = gets.chomp
#p name
puts "How old are you?"
age = gets.to_i

puts "What year were you born in?"
year = gets.to_i

current_year = 2016
#p current_year

year_diff = current_year-year
#p year_diff 

if year_diff == age
	correct_age = true
elsif year_diff != age
	correct_age = false
end

#puts correct_age


puts "Our company cafeteria serves garlic bread. Should we order some for you? Yes or No?"
bread_pref = gets.chomp
if bread_pref == "Yes"
	garlic = true
elsif bread_pref == "No"
	garlic = false
end

#p garlic

puts "Would you like to enroll in the company's health insurance? Yes or No?"
h_insurance = gets.chomp

if h_insurance == "Yes"
	insurance = true
elsif h_insurance == "No"
	insurance = false
end

#p insurance

#Ask jeremy about this one
if correct_age && (garlic||insurance)
	puts "probably not a vampire"

elsif !correct_age && (!garlic||!insurance)
	puts "Might be a vampire"
elsif !correct_age && (!garlic && !insurance)
	puts "Almost certainly a vampire"

elsif name == "Drake Cula"
	puts "Definitely a vampire"

elsif name == "Tu Fang"
	puts "Definitely a vampire"
	

else
	puts "Results inconclusive"	
end

stop_word = "done"

while alergies != stop_word
	puts "What are your alergies? When you have listed them all type done"
	alergies = gets.chomp
end

if alergies == "sunshine"
	puts "definitely a vampire"
else
	puts "Probably not a vampire"
end

puts "Actually, never mind! What do these questions have to do with anything? Lets be friends."