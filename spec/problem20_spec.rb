require 'problem20'

describe 'Problem20' do

  describe 'Factorial Digit Sum' do
    it 'Works Out The Factorial Digit Sum' do
      expect(factorial_digit_sum(10)).to eq 27
    end

    it 'Works Out The Factorial Digit Sum' do
      expect(factorial_digit_sum(100)).to eq 648
    end
  end
end
