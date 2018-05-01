require 'common'

def special_pythagorean_triplet(limit)
  (1..limit).each do |a|
    (1..limit).each do |b|
      break if b > limit - a - b
      c_2 = squared_sum(a, b)
      next unless square_root_natural_number?(c_2)
      c = integer_square_root(c_2)
      return a*b*c if a + b + c == limit
    end
  end
end

def square_root_natural_number?(natural_number)
  integer_square_root(natural_number)**2 == natural_number
end
