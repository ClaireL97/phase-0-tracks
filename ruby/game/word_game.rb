class Word_Game
attr_accessor :Word, :guess, :Guess_list, :Answer, :word_characters

	def initialize(word)
		puts "Initializing word game instance..."
		@Word = word.upcase
		@word_characters = word.upcase.split('')
		@letter_index = {}
		@Guess_list = []
		@Answer = []
		@guess_limit = @Word.length
	end

	def index_storage
		index = 0
		until index == @Word.length
			value = @word_characters[index]
				index +=1
			@letter_index[index] = value
		end
		p @letter_index
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

		elsif user_guess.upcase == @Word
			puts "Nice job, the word was #{@Word}! You Win!"

		elsif @word_characters.include?user_guess
			@Guess_list.push(user_guess)
			character_index = @word_characters.index(user_guess)
			p character_index
			@Answer[character_index] = user_guess
			p @Answer
			p @Guess_list
			@guess_limit -= 1
			puts "You have #{@guess_limit} guesses left"

		elsif !@word_characters.include?user_guess
			puts "That is not in the word"
			@Guess_list.push(user_guess)
			p @Answer
			p @Guess_list
			@guess_limit -= 1
			puts "You have #{@guess_limit} guesses left"		
		end
	end
end
#Things to do
		#Make program find all the index's for example in letter 2 t's and right now program only takes first one
		#make it print answers for when answer is reached
#game = Word_Game.new("Shelter")
 # game.guess_checker("SHELTER")
 # game.guess_checker("s")
 # game.guess_checker("t")
 # game.guess_checker("s")

puts "Lets begin the game. What word would you like to scrable?"
game = Word_Game.new(gets.chomp)
game.answer_box
game.index_storage