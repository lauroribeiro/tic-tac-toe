require_relative '../lib/tic_tac_toe.rb'
require_relative '../lib/player.rb'

describe Player do
  subject(:player) { described_class.new('Lauro')}
  describe '#new' do
    it 'is named Lauro' do 
      expect(player.name).to eq('Lauro')
    end

    it 'has a symbol L' do
      expect(player.symbol).to eq('L')
    end
  end
end

describe TicTacToe do
  
  describe '#initialize' do
    context 'when creating a game with two players'
      subject(:game) { described_class.new(p1, p2)}
      let(:p1) { instance_double(Player, value: 'Lauro')}
      let(:p2) { instance_double(Player, value: 'You')}

      it ''
  end
end
