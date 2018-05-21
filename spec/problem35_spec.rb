require 'problem35'

describe 'Problem35' do
  describe 'Circular Primes' do
    it 'Works Out Distinct Number Of Circular Primes Below 100' do
      expect(circular_primes(100)).to eq 13
    end

    it 'Works Out Distinct Number Of Circular Primes Below 1000000' do
      expect(circular_primes(1_000_000)).to eq 55
    end
  end
end
