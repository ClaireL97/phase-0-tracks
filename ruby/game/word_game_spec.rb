require_relative 'word_game'

describe Word_Game do
  let(:word_game) {Word_Game.new("Shelter")}

 it "takes word length and turns it into an array of underscores" do
    expect(word_game.answer_box).to eq ["_", "_", "_", "_", "_", "_", "_"]
  end

 it "Takes a guess and tests to see if the letter S is in the word and if it is, puts it into the word." do
 	word_game.guess_checker("t")
 	expect(word_game.guess_checker). to eq ["_","_","_","_","T","_","_"]
 end

end