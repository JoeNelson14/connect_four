require './lib/game.rb'

describe ConnectFour do
  describe '#initialize' do
    context 'when program starts check if names are right' do
      subject(:game) { described_class.new('joe', 'bob') }

      it 'returns string' do
        player_one_name = game.initialize.player1_name
        expect(player_one_name).to be_a_kind_of(String)
      end
    end
  end

end