module RockPaperScissors
  class Game
    include Singleton
    include MovesLogic

    def can_beat?(move1, move2)
      MOVES[move1][:beats].include?(move2)
    end

    def draw?(move1, move2)
      move1 == move2
    end

  end
end