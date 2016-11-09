class Santa


	def speak
		puts "Ho, ho, ho! Happy holidays!"
	end


	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
	
	def initialize
		puts "Initializing Santa instance..."
	end


end

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("Chocolate Chip")