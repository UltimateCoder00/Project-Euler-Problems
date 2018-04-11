require 'problem4'

describe 'Problem4' do

  describe 'Largest Palindrome Product' do
    it 'Works Out The Largest Palindrome Product Of Two 2-Digit Numbers' do
      expect(largest_palindrome_product(2)).to eq 9009
    end

    it 'Works Out The Largest Palindrome Product Of Two 3-Digit Numbers' do
      expect(largest_palindrome_product(3)).to eq 906609
    end
  end
end
