require 'common'

def special_pythagorean_triplet(limit)
  (1..limit).each do |a|
    (1..limit).each do |b|
      break if obviously_not_pythagorean_triplet?(a, b, limit)
      c_2 = squared_sum(a, b)
      next unless square_root_natural_number?(c_2)
      c = integer_square_root(c_2)
      return a * b * c if pythagorean_triplet?(a, b, c, limit)
    end
  end
end

def obviously_not_pythagorean_triplet?(a, b, limit)
  b > limit - a - b
end

def square_root_natural_number?(natural_number)
  integer_square_root(natural_number)**2 == natural_number
end

def pythagorean_triplet?(a, b, c, limit)
  a + b + c == limit
end
