require 'problem9'

describe 'Problem9' do

  describe 'Special Pythagorean Triplet' do
    it 'Works Out Special Pythagorean Triplet Of a+b+c=1000' do
      expect(special_pythagorean_triplet(1000)).to eq 31875000
    end
  end
end
