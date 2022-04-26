require 'rails_helper'

RSpec.describe RockPaperScissors::Game do
  let(:game){RockPaperScissors::Game.instance}

  describe '#Win check' do
    it 'paper beats rock' do
      expect(game.can_beat?("paper", "rock")).to eq(true)
    end

    it 'rock beats scissors' do
      expect(game.can_beat?("rock", "scissors")).to eq(true)
    end

    it 'scissors beats paper' do
      expect(game.can_beat?("scissors", "paper")).to eq(true)
    end
  end

  describe '#Draw Check' do
    it 'paper draws paper' do
      expect(game.draw?("paper", "paper")).to eq(true)
    end

    it 'scissors draws scissors' do
      expect(game.draw?("scissors", "scissors")).to eq(true)
    end

    it 'rock draws rock' do
      expect(game.draw?("rock", "rock")).to eq(true)
    end
  end
end