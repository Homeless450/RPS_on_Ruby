RSpec.describe RockPaperScissors do
  describe '#Win check' do
    it 'paper beats rock' do
      expect(RockPaperScissors::Game.instance.can_beat?(paper, rock)).to eq(true)
    end

    it 'rock beats scissors' do
      expect(RockPaperScissors::Game.instance.can_beat?(rock, scissors)).to eq(true)
    end

    it 'scissors beats paper' do
      expect(RockPaperScissors::Game.instance.can_beat?(scissors, paper)).to eq(true)
    end
  end

  describe '#Draw Check' do
    it 'paper draws paper' do
      expect(RockPaperScissors::Game.instance.draw?(paper, paper)).to eq(true)
    end

    it 'scissors draws scissors' do
      expect(RockPaperScissors::Game.instance.draw?(scissors, scissors)).to eq(true)
    end

    it 'rock draws rock' do
      expect(RockPaperScissors::Game.instance.draw?(rock, rock)).to eq(true)
    end
  end
end