require 'problem7'

describe 'Problem7' do

  describe '10001st Prime' do
    it 'Works Out The 6th Prime' do
      expect(find_prime(6)).to eq 13
    end

    it 'Works Out The 10001st Prime' do
      expect(find_prime(10_001)).to eq 104_743
    end
  end
end
