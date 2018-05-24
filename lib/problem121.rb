require 'common'

def palindromic_sums(limit)
  max = square_root(limit).to_i
  squares = (1..max).map { |x| x**2 }

  (0...squares.length).each do |i|
    ((i + 1)...squares.length).each do |j|
      sum = squares[i..j].sum
      break if sum > limit
      palindromic?(sum) ? palindromic_sums_array << sum : next
    end
  end

  palindromic_sums_array.uniq.sum
end

def palindromic_sums_array
  @palindromic_sums_array ||= []
end
