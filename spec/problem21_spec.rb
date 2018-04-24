require 'problem21'

describe 'Problem21' do

  describe 'Amicable Numbers' do
    it 'Works Out The Amicable Numbers' do
      expect(amicable_numbers(10000)).to eq 31626
    end
  end
end
