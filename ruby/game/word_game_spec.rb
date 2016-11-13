require_relative 'word_game'

describe Word_Game do
  let(:word_game) {Word_Game.new("Shelter")}

 it "takes word length and turns it into an array of underscores" do
    expect(word_game.answer_box).to eq ["_", "_", "_", "_", "_", "_", "_"]
  end

  it "guesses the letter E " do
  	word_game.answer_box
  	word_game.guess_checker("E")
  	expect(word_game.Answer).to eq ["_","_","E","_","_","E","_"]
  end

end