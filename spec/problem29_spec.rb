require 'problem29'

describe 'Problem29' do

  describe 'Distinct Powers' do
    it 'Works Out Distinct Powers 1' do
      expect(distinct_powers(2..5, 2..5)).to eq 15
    end

    it 'Works Out Distinct Powers 2' do
      expect(distinct_powers(2..100, 2..100)).to eq 9183
    end
  end
end
