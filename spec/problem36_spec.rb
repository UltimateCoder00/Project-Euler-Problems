require 'problem36'

describe 'Problem36' do

  describe 'Double-Base Palindromes' do
    it 'Works Out The Sum Of Double-Base Palindromes Below 1000000' do
      expect(double_base_palindromes(1000000)).to eq 13
    end
  end
end
