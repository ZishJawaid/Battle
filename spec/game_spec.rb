require 'game'

describe Game do
    subject(:game) { described_class.new }
    let(:player_1) { double "zish"}
    let(:player_2) { double "sophia" }

    describe '#attack' do
        it 'attacks another player' do
            expect(player_2).to receive(:damage)
            game.attack(player_2)
        end
    end
end