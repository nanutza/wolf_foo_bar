require_relative 'word_game'

describe Game do 
	let(:game) {Game.new}

  it "has a readable writable and variable" do
    expect(game.game_over).to eq "false"
  end
	
  it "can play the game" do
    game.play_game("hello", "o")
    expect(game.play_game("hello", "o")).to eq [" - "," - "," - "," - "," o "]
    expect(game.max_guesses("hello")).to eq 15
  end

end