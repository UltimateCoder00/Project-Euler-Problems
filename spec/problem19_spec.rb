require 'problem19'

describe 'Problem19' do

  describe 'Counting Sundays' do
    it 'Works Out The Amount Of Sundays Between Dates' do
      expect(counting_sundays(Date.new(1901, 1, 1), Date.new(2000, 12, 31))).to eq 171
    end
  end
end
