require_relative '../spec_helper.rb'

describe RockPapeScis::Game do
  describe  "#play" do
    it "returns the player's name who chose ROCKS > SCISSORS" do
      result = RockPapeScis::Game.play(player1 = {name: "John", move: "rock"},  player2 = {name: "Stephan", move: "scissors"})
      expect(result).to eq "John"
    end

    it "returns the player's name who chose SCISSORS > PAPER" do
      result = RockPapeScis::Game.play(player1 = {name: "John", move: "scissors"},  player2 = {name: "Stephan", move: "paper"})
      expect(result).to eq "John"
    end

    it "returns the player's name who chose PAPER > ROCK" do
      result = RockPapeScis::Game.play(player1 = {name: "John", move: "rock"},  player2 = {name: "Stephan", move: "paper"})
      expect(result).to eq "Stephan"
    end

    it "returns a tie when both playes choose the same move" do
      result = RockPapeScis::Game.play(player1 = {name: "John", move: "rock"},  player2 = {name: "Stephan", move: "rock"})
      expect(result).to eq "It's a tie. Keep playing"
    end
    
  end
end