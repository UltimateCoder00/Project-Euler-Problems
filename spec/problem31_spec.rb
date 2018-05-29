require 'problem31'

describe 'Problem31' do
  describe 'Coin Sums' do
    it 'Works Out The Coin Sums' do
      expect(coin_sums([1, 2, 5, 10, 20, 50, 100, 200], 200)).to eq 73_682
    end
  end
end
