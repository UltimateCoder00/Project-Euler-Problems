require 'problem14'

describe 'Problem14' do

  describe 'Longest Collatz Sequence' do
    it 'Works Out The Longest Collatz Sequence Below 1 Million' do
      expect(longest_collatz_sequence).to eq 837799
    end
  end
end
