require 'player'

describe Player do
    it 'returns its name' do
        zish = Player.new("Zish")
         expect(zish.name).to eq "Zish"
    end
end