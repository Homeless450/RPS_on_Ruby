module MovesLogic

  MOVES = {
    rock: { beats: ["scissors"] },
    paper: { beats: ["rock"] },
    scissors: { beats: ["paper"] }
  }.with_indifferent_access
  
  def random_move
    MOVES.keys.sample
  end

end