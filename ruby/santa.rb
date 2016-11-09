class Santa
	attr_reader :reindeer_ranking
	attr_accessor :gender, :age, :ethnicity

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
		#p @age
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete reindeer
		@reindeer_ranking.push reindeer
		#p @reindeer_ranking

	end

	#getter method
	#def age
	#	@age
	#end
	#commenting these out for refactor

	#def ethnicity
	#	@ethnicity
	#end

	#def gender
	#	@gender
	#end

	#setter method
	#commenting this out for refactor
	#def gender=(new_gender)
	#	@gender = new_gender
	#end


	
end

#Driver Code
santa = Santa.new("Male","white")
santa.speak
santa.eat_milk_and_cookies("White Chocolate Chip")

#this code tests the setter method setting santa gender to lowercase male
santa.gender = "male"
p santa.gender
p santa.ethnicity

santa.celebrate_birthday
santa.get_mad_at("Dasher")



white_female_santa = Santa.new("female","white")
white_female_santa.speak
white_female_santa.eat_milk_and_cookies("Chocolate Chip")


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
age = rand(140)


puts "How many Santa's would you like to make?"
santa_number = gets.to_i
until santa_number == 0
	santa_clone = Santa.new(example_genders.sample,example_ethnicities.sample)
	santa_clone.age = rand(140)
	p santa_clone.gender
	p santa_clone.ethnicity
	p santa_clone.age
	santa_number -= 1
end



