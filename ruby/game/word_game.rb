class Word_Game
	def initialize(word)
		puts "Initializing word game instance..."
		@Word = word.upcase
		@word_characters = word.upcase.split('')
		@Guess_list = []
		@Answer = []
		@guess_limit = 20
	end

	def get_Guess_list
		p @Guess_list
		@Guess_list
	end

	def answer_box
		length = 0
		until length == @Word.length
			@Answer.push ('_')
			length += 1
		end
		p @Answer
	end



end
