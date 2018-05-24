require 'problem121'

describe 'Problem121' do
  describe 'Palindromic Sums' do
    it 'Works Out The Palindromic Sums' do
      expect(palindromic_sums(1_000)).to eq 4_164
    end

    it 'Works Out The Palindromic Sums' do
      expect(palindromic_sums(100_000_000)).to eq 2_906_969_179
    end
  end
end
