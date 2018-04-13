require 'problem47'

describe 'Problem47' do

  describe 'Distinct Primes Factors' do
    it 'Works Out The Distinct Primes Factors Of Two Consecutive Numbers' do
      expect(distinct_primes_factors(2)).to eq 14
    end

    it 'Works Out The Distinct Primes Factors Of Three Consecutive Numbers' do
      expect(distinct_primes_factors(3)).to eq 644
    end

    it 'Works Out The Distinct Primes Factors Of Four Consecutive Numbers' do
      expect(distinct_primes_factors(4)).to eq 134043
    end
  end
end
