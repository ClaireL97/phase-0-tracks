=begin 
module Shout
    def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def self.yell_happily(words)
  		words + "!!!!!" + " :D "
  	end
end

p Shout.yell_happily("I FINALLY BEAT THIS GAME")
p Shout.yell_angrily("WHY YOU DO THIS")
=end

module Shout
	def yell_angrily(words)
		puts "#{words}!!! D:< "
	end

	def yell_happily(words)
		puts "#{words}!!!!! :D "
	end
end

#two classes that have shout method
class Gamer
	include Shout
end

class Teacher
	include Shout
end

#driver code
gamer = Gamer.new
gamer.yell_angrily("How did we lose when we were winning earlier")
gamer.yell_happily("Awesome We made a comeback")

teacher = Teacher.new
teacher.yell_angrily("Finish your homework")
teacher.yell_happily("Have a good summer vacation")
