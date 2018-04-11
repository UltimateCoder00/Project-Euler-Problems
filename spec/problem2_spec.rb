require 'problem2'

describe 'Problem2' do

  describe 'Even Fibonacci Numbers' do
    it 'Works Out The Even Fibonacci Numbers Below Four Million' do
      expect(even_fibonacci_numbers(4000000)).to eq 4613732
    end
  end
end
