puts "How many employees will be processed?"
employee_number = gets.to_i
until employee_number == 0
	puts "What is your name?"
	name = gets.chomp
	#p name
	puts "How old are you?"
	age = gets.to_i

	puts "What year were you born in?"
	year = gets.to_i

	current_year = 2016
	#p current_year
	if year >= current_year
		puts "you are either a baby or a future person -.-"
	end


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

	if name == "Drake Cula"
		puts "Definitely a vampire"

	elsif name == "Tu Fang"
		puts "Definitely a vampire"

	elsif correct_age && (garlic||insurance)
		puts "probably not a vampire"

	elsif !correct_age && (!garlic && !insurance)
		puts "Almost certainly a vampire"

	elsif !correct_age && (!garlic||!insurance)
		puts "Might be a vampire"

	else
		puts "Results inconclusive"	
	end

	puts "What are your allergies? When you have listed them all type done"
	stop_word = "done"
	allergies = gets.chomp
	while allergies != stop_word

		if allergies == "sunshine"
			puts "definitely a vampire"
			allergies = "done"
		elsif allergies != stop_word
			puts "What are your allergies? When you have listed them all type done"
			allergies = gets.chomp
			if allergies == "done"

				#for some reason this is not printing at the end of the file even when the logic ends up being correct
				puts "Probably not a vampire"
			end
		end
		
	end
employee_number -= 1
end


puts "Actually, never mind! What do these questions have to do with anything? Lets be friends."