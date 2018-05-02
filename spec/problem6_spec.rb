require 'problem6'

describe 'Problem6' do

  describe 'Sum Square Difference' do
    it 'Works Out The Sum Square Difference Of 10' do
      expect(sum_square_difference(10)).to eq 2_640
    end

    it 'Works Out The Sum Square Difference Of 100' do
      expect(sum_square_difference(100)).to eq 25_164_150
    end
  end
end
