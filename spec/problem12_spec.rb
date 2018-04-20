require 'problem12'

describe 'Problem12' do

  describe 'Highly Divisible Triangular Number' do
    it 'Works Out The Highly Divisible Triangular Number Of More Than 5 Divisors' do
      expect(highly_divisible_triangular_number(5)).to eq 6
    end

    it 'Works Out The Highly Divisible Triangular Number Of More Than 500 Divisors' do
      expect(highly_divisible_triangular_number(500)).to eq 76576500
    end
  end
end
