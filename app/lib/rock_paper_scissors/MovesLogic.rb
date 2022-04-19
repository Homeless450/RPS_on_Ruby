module MovesLogic

  MOVES = ["rock", "paper", "scissors"]

  WIN_MATRIX = [["It's a draw", "You won", "You lose"], ["You lose", "It's a draw", "You won"], ["You lose", "You won", "It's a draw"]]
  
  def random_move
    MOVES.sample
  end
end