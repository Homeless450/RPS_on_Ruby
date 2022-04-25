class GameController < ApplicationController
  include RockPaperScissors::MovesLogic

  def index; end

  def play; end

  def result
    @title = 'Player vs Bot'
    @p1 = params[:shape]
    @p2 = random_move

    if game.draw?(@p1, @p2)
      return @result = 'Draw'
    end

    @result =
      if game.can_beat?(@p1, @p2)
        'You won'
      else
        'You lose'
      end
  end

  private def game
    @_game ||= RockPaperScissors::Game.instance
  end
end
