require 'problem50'

describe 'Problem50' do

  describe 'Consecutive Prime Sum' do
    it 'Works Out The Consecutive Prime Sum Below 100' do
      expect(consecutive_prime_sum(100)).to eq 41
    end

    it 'Works Out The Consecutive Prime Sum Below 1000' do
      expect(consecutive_prime_sum(1000)).to eq 953
    end

    it 'Works Out The Consecutive Prime Sum Below 1000000' do
      expect(consecutive_prime_sum(1000000)).to eq 997651
    end
  end
end
