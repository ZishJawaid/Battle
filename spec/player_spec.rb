require 'player'

describe Player do
    
    subject(:zish) { described_class.new('Zish') }
    subject(:sophia) { described_class.new('Sophia') }

    describe '#name' do
        it 'returns its name' do
            expect(zish.name).to eq('Zish')
        end
    end

    describe '#hit_points' do
        it 'returns the hit points' do
            expect(zish.hit_points).to eq Player::DEFAULT_HIT_POINTS
        end
    end

    describe '#attack' do
        it 'attacks another player' do
            expect(sophia).to receive(:damage)
            zish.attack(sophia)
        end
    end

    describe '#damage' do
        it 'damages another player' do
            expect{ sophia.damage }.to change { sophia.hit_points }.by (-10)
        end
    end
end