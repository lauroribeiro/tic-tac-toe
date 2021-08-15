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
  subject(:game_position) { described_class.new(p1, p2) }
  let(:p1) { instance_double(Player, name: 'Lauro') }
  let(:p2) { instance_double(Player, name: 'You') }
  
  describe '#game_over' do
    context 'when the board top row is L L L' do
      before do
        game_position.instance_variable_set(:@positions, ['L', 'L', 'L', 3, 4, 5, 6, 7, 8])
      end
      
      it 'is game over' do
        expect(game_position.game_over).to be_truthy
      end
    end

    context 'when the board middle row is L L L' do
      before do
        game_position.instance_variable_set(:@positions, [0, 1, 2, 'L', 'L', 'L', 6, 7, 8])
      end
      
      it 'is game over' do
        expect(game_position.game_over).to be_truthy
      end
    end

    context 'when the board bottom row is L L L' do
      before do
        game_position.instance_variable_set(:@positions, [0, 1, 2, 3, 4, 5, 'L', 'L', 'L'])
      end
      
      it 'is game over' do
        expect(game_position.game_over).to be_truthy
      end
    end

    context 'when the board left column is L L L' do
      before do
        game_position.instance_variable_set(:@positions, ['L', 1, 2, 'L', 4, 5, 'L', 7, 8])
      end
      
      it 'is game over' do
        expect(game_position.game_over).to be_truthy
      end
    end

    context 'when the board middle column is L L L' do
      before do
        game_position.instance_variable_set(:@positions, [0, 'L', 2, 3, 'L', 5, 6, 'L', 8])
      end
      
      it 'is game over' do
        expect(game_position.game_over).to be_truthy
      end
    end

    context 'when the board right column is L L L' do
      before do
        game_position.instance_variable_set(:@positions, [0, 1, 'L', 3, 4, 'L', 6, 7, 'L'])
      end
      
      it 'is game over' do
        expect(game_position.game_over).to be_truthy
      end
    end

    context 'when the board first diagonal is L L L' do
      before do
        game_position.instance_variable_set(:@positions, ['L', 1, 2, 3, 'L', 5, 6, 7, 'L'])
      end
      
      it 'is game over' do
        expect(game_position.game_over).to be_truthy
      end
    end

    context 'when the board second diagonal is L L L' do
      before do
        game_position.instance_variable_set(:@positions, [0, 1, 'L', 3, 'L', 5, 'L', 7, 8])
      end
      
      it 'is game over' do
        expect(game_position.game_over).to be_truthy
      end
    end
  end
end
