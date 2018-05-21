require 'problem25'

describe 'Problem25' do
  describe '1000-digit Fibonacci Number' do
    it 'Works Out The 3-digit Fibonacci Number' do
      expect(find_fibonacci_number(3)).to eq 12
    end

    it 'Works Out The 1000-digit Fibonacci Number' do
      expect(find_fibonacci_number(1000)).to eq 648
    end
  end
end
