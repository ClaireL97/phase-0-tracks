class Santa

	def initialize (gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Happy holidays!"
	end


	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	#Attribute Changing Methods
	def celebrate_birthday
		@age += 1
		p @age
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete reindeer
		@reindeer_ranking.push reindeer
		p @reindeer_ranking

	end



	
end

#Driver Code
santa = Santa.new("Male","white")
santa.speak

white_female_santa = Santa.new("female","white")
white_female_santa.speak
white_female_santa.eat_milk_and_cookies("Chocolate Chip")

santa.celebrate_birthday
santa.get_mad_at("Dasher")
