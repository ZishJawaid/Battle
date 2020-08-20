require 'game'

describe Game do
    subject(:game) { described_class.new(player_1, player_2) }
    let(:player_1) { double "zish"}
    let(:player_2) { double "sophia" }

    it 'intializes with a player 1' do
        expect(game.player_1).to eq(player_1)
    end

    it 'intializes with a player 2' do
        expect(game.player_2).to eq(player_2)
    end
    
    describe '#attack' do
        it 'attacks another player' do
            expect(player_2).to receive(:damage)
            game.attack(player_2)
        end
    end
end