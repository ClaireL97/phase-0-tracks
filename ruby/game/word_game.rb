class Word_Game
attr_accessor :Word, :guess, :Guess_list, :Answer, :word_characters, :guess_limit, :victory

	def initialize(word)
		puts "Initializing word game instance..."
		@Word = word.upcase
		@word_characters = word.upcase.split('')
		#@letter_index = {}
		@Guess_list = []
		@Answer = []
		@victory = nil
		@guess_limit = @Word.length
		answer_box
	end
=begin 
	def index_storage
		index = 0
		until index == @Word.length
			value = @word_characters[index]
				index +=1
			@letter_index[index] = value
		end
		@letter_index
	end
=end
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
		if @guess_limit == 0 && @victory == false
			p "Staaahp D: you're out of guesses!"
			return "Staaahp D: you're out of guesses!"
		elsif @guess_limit == 0 && @victory == true
			p "Staaahp D: you've already won!"
			return "Staaahp D: you've already won!"
		end
		if @Guess_list.include?user_guess
			puts "You have already guessed that"
			puts "You have #{@guess_limit} guesses left"

		elsif user_guess.upcase == @Word
			@Answer = @Word
			@victory = true
			@guess_limit = 0
		
		
		elsif @word_characters.include?user_guess
			@Guess_list.push(user_guess)

			word_length = 0
			until word_length == @word_characters.length
				if user_guess == @word_characters[word_length]
					@Answer[word_length] = user_guess
				end
				word_length += 1
			end
			p @Answer
			@guess_limit -= 1
			if @word_characters == @Answer
				@victory = true
				@guess_limit = 0
			else
				if @guess_limit == 0
					@victory = false
				end
				puts "You have #{@guess_limit} guesses left. Guess Again"
			end

			
		
		elsif !@word_characters.include?user_guess
			puts "That is not in the word"
			@Guess_list.push(user_guess)
			p @Answer
			p @Guess_list
			@guess_limit -= 1
			if @guess_limit == 0
				@victory = false
			end
			p "You have #{@guess_limit} guesses left"
		end
	end
end
#Things to do
		#Make program find all the index's for example in letter 2 t's and right now program only takes first one
# game = Word_Game.new("Shelter")

#   game.guess_checker("SHELTER")
#   game.guess_checker("s")
#   game.guess_checker("e")
#   game.guess_checker("t")
#   game.guess_checker("s")
#   game.guess_checker("r")
#   game.guess_checker("h")
#   game.guess_checker("l")

#User Interface

# puts "Lets begin the game. What word would you like to have guessed?"
 # game = Word_Game.new(gets.chomp)

 #  until game.victory != nil
 #  	puts "Now then time to start guessing. Guess a letter or the word!"
 # 	game.guess_checker(gets.chomp)
 #  end
 # p game.victory
 # if game.victory == false
 #  	puts "And you FAIIIL -.- The word was #{game.Word}"
 # else
 # 	puts "YAY! You guessed #{game.Word} correctly! ^.^"
 # end