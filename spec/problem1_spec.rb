require 'problem1'

describe 'Problem1' do

  describe 'Multiples Of 3 And 5' do
    it 'Works Out The Sum Of Multiples Of 3 And 5 Below 10' do
      expect(multiples_of_three_and_five(10)).to eq 23
    end

    it 'Works Out The Sum Of Multiples Of 3 And 5 Below 100' do
      expect(multiples_of_three_and_five(1_000)).to eq 233_168
    end
  end
end
