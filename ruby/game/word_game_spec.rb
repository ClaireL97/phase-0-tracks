require_relative 'word_game'

describe Word_Game do
  let(:word_game) {Word_Game.new("Shelter")}

 it "takes word length and turns it into an array of underscores" do
    expect(word_game.Answer).to eq ["_", "_", "_", "_", "_", "_", "_"]
  end

  it "guesses the letter E " do
  	word_game.guess_checker("E")
  	expect(word_game.Answer).to eq ["_","_","E","_","_","E","_"]
  end
  
 it "guesses the full word" do
 	word_game.guess_checker("shelter")
 	expect(word_game.Answer).to eq (word_game.Word)
 end

 it "Guesses a wrong answer" do 
 	expect(word_game.guess_checker("M")). to eq ("You have #{word_game.guess_limit} guesses left")
 end



end