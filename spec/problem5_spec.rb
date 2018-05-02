require 'problem5'

describe 'Problem5' do

  describe 'Smallest Multiple' do
    it 'Works Out The Smallest Multiple From 1 To 10' do
      expect(smallest_multiple(10)).to eq 2_520
    end

    it 'Works Out The Smallest Multiple From 1 To 20' do
      expect(smallest_multiple(20)).to eq 232_792_560
    end
  end
end
