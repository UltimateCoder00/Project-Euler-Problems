require 'problem10'

describe 'Problem10' do

  describe 'Summation Of Primes' do
    it 'Works Out The Summation Of Primes' do
      expect(summation_of_primes(10)).to eq 17
    end

    it 'Works Out The Summation Of Primes' do
      expect(summation_of_primes(2000000)).to eq 142913828922
    end
  end
end
