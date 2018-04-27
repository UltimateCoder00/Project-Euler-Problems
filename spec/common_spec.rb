require 'common'

describe 'Common' do

  describe '#prime?' do
    it 'Works Out The If A Natural Number Is Prime' do
      expect(prime?(19)).to eq true
    end

    it 'Works Out The If A Natural Number Is Prime' do
      expect(prime?(10)).to eq false
    end

    it 'Works Out The If A Natural Number Is Prime' do
      expect(prime?(37)).to eq true
    end
  end

  describe '#prime_divisions' do
    it 'Works Out The Prime Divisors Of A Natural Number' do
      expect(prime_divisions(19)).to eq [[19, 1]]
    end

    it 'Works Out The Prime Divisors Of A Natural Number' do
      expect(prime_divisions(10)).to eq [[2, 1], [5, 1]]
    end

    it 'Works Out The Prime Divisors Of A Natural Number' do
      expect(prime_divisions(37)).to eq [[37, 1]]
    end
  end

  describe '#divisible?' do
    it 'Works Out If Natural Number Is Divisible By Another Natural Number' do
      expect(divisible?(19, 2)).to eq false
    end

    it 'Works Out If Natural Number Is Divisible By Another Natural Number' do
      expect(divisible?(10, 5)).to eq true
    end

    it 'Works Out If Natural Number Is Divisible By Another Natural Number' do
      expect(divisible?(100, 4)).to eq true
    end
  end

  describe '#palindromic?' do
    it 'Works Out If A Natural Number Is Palindromic' do
      expect(palindromic?(1992)).to eq false
    end

    it 'Works Out If Natural Number Is Divisible By Another Natural Number' do
      expect(palindromic?(445544)).to eq true
    end

    it 'Works Out If Natural Number Is Divisible By Another Natural Number' do
      expect(palindromic?(100001)).to eq true
    end
  end

  describe '#lcm' do
    it 'Works Out The LCM Of A Range' do
      expect(lcm(1..2)).to eq 2
    end

    it 'Works Out The LCM Of A Range' do
      expect(lcm(1..3)).to eq 6
    end

    it 'Works Out The LCM Of A Range' do
      expect(lcm(1..4)).to eq 12
    end

    it 'Works Out The LCM Of A Range' do
      expect(lcm(1..5)).to eq 60
    end

    it 'Works Out The LCM Of A Range' do
      expect(lcm(1..6)).to eq 60
    end

    it 'Works Out The LCM Of A Range' do
      expect(lcm(1..7)).to eq 420
    end

    it 'Works Out The LCM Of A Range' do
      expect(lcm(1..8)).to eq 840
    end

    it 'Works Out The LCM Of A Range' do
      expect(lcm(1..9)).to eq 2520
    end

    it 'Works Out The LCM Of A Range' do
      expect(lcm(1..10)).to eq 2520
    end
  end
end
