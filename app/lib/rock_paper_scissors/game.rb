module RockPaperScissors
  class Game
    include Singleton
    include MovesLogic
      
    def who_won(move1, move2)

      @gameresult = WIN_MATRIX[MOVES.find_index(move1)][MOVES.find_index(move2)]
    end
  end
end