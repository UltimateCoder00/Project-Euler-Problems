require 'problem62'

describe 'Problem62' do
  describe 'Cubic Permutations' do
    it 'Works Out The Cubic Permutations' do
      expect(cubic_permutations(3)).to eq 41_063_625
    end

    it 'Works Out The Cubic Permutations' do
      expect(cubic_permutations(5)).to eq 127_035_954_683
    end
  end
end
