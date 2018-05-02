require 'problem17'

describe 'Problem17' do

  describe 'Number Letter Counts' do
    it 'Works Out The Number Letter Counts Of 1 To 5' do
      expect(number_letter_counts(5)).to eq 19
    end

    it 'Works Out The Number Letter Counts Of 1 To 1000' do
      expect(number_letter_counts(1_000)).to eq 21_124
    end
  end
end
