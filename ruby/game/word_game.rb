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

	def guess_checker(guess)
		user_guess = guess.upcase
		if @Guess_list.include?user_guess
			puts "You have already guessed that"
		end

		if @word_characters.include?user_guess
			@Guess_list.push(user_guess)
			character_index = @word_characters.index(user_guess)
			@Answer[character_index] = user_guess
			p @Answer
			p @Guess_list
			@guess_limit -= 1

		elsif !@word_characters.include?user_guess
			puts "That is not in the word"
			@Guess_list.push(user_guess)
			p @Answer
			p @Guess_list
			@guess_limit -= 1
			
		end


	end



end

game = Word_Game.new("Shelter")
game.answer_box
game.guess_checker("y")