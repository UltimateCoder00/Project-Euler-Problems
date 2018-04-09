require 'problem3'

describe 'Problem3' do

  describe 'Largest Prime Factor' do
    it 'Works Out The Largest Prime Factor Of 13195' do
      expect(largest_prime_factor(13195)).to eq 29
    end

    it 'Works Out The Largest Prime Factor Of 600851475143' do
      expect(largest_prime_factor(600851475143)).to eq 6857
    end
  end
end
