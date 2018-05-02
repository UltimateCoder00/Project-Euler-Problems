require 'problem16'

describe 'Problem16' do

  describe 'Power Digit Sum' do
    it 'Works Out The Power Digit Sum Of 2**15' do
      expect(power_digit_sum(15)).to eq 26
    end

    it 'Works Out The Power Digit Sum Of 2**1000' do
      expect(power_digit_sum(1_000)).to eq 1_366
    end
  end
end
