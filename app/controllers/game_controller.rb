class GameController < ApplicationController
  include RockPaperScissors
  include MovesLogic

  def initial; end

  def play; end

  def result
    @title = 'rock paper scissors'
    @again_link = play_path
    @p1 = params[:shape]
    @p2 = random_move

    @gameresult = game.who_won(@p1, @p2)
    @result = "#{@gameresult}! /n You chose #{@p1} and computer chose #{@p2}"
  end

  private def game
    @_game ||= RockPaperScissors::Game.instance
  end
end
