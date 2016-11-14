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

 it "Runs out of guesses" do
 	word_game.guess_checker("C")
 	word_game.guess_checker("S")
 	word_game.guess_checker("A")
 	word_game.guess_checker("V")
 	word_game.guess_checker("N")
 	word_game.guess_checker("R")
 	word_game.guess_checker("T")
 	word_game.guess_checker("z")
 	expect(word_game.guess_checker("mew")). to eq ("Staaahp D: you're out of guesses!")
 end

 it "Wins but keeps guessing" do
 	word_game.guess_checker("S")
 	word_game.guess_checker("H")
 	word_game.guess_checker("E") 
 	word_game.guess_checker("L")
 	word_game.guess_checker("T")
 	word_game.guess_checker("R")
 	expect(word_game.guess_checker("mew")). to eq ("Staaahp D: you've already won!")
 end

 it "Guesses the word correctly letter by letter" do
 	word_game.guess_checker("S")
 	word_game.guess_checker("H")
 	word_game.guess_checker("E") 
 	word_game.guess_checker("L")
 	word_game.guess_checker("T")
 	word_game.guess_checker("R")
 	expect(word_game.victory). to eq (true)
end

it "Duplicate guess" do
 	word_game.guess_checker("S")
 	word_game.guess_checker("S")
 	expect(word_game.Guess_list). to eq (["S"])
end

end