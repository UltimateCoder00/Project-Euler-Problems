require 'problem187'

describe 'Problem187' do
  describe 'Semiprimes' do
    it 'Works Out The Semiprimes' do
      expect(semiprimes(100_000_000)).to eq 17_427_258
    end
  end
end
