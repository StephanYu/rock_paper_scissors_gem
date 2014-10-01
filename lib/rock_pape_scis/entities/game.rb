
module RockPapeScis
  class Game
    def self.play(player1 = {}, player2 = {})
      if player1[:move] == player2[:move]
        return "It's a tie. Keep playing"
      elsif (player1[:move] == "paper" && player2[:move] == "rock") || (player1[:move] == "scissors" && player2[:move] == "paper") || (player1[:move] == "rock" && player2[:move] == "scissors")
        player1[:name]
      else
        player2[:name]
      end
    end
  end
end


  

