require 'common'

def triangular_pentagonal_and_hexagonal
  triangle_array = []
  pentagonal_array = []
  hexagonal_array = []

  (1..100_000).each do |n|
    triangle_array << triangle(n)
    pentagonal_array << pentagonal(n)
    hexagonal_array << hexagonal(n)
  end

  (triangle_array & pentagonal_array & hexagonal_array).max
end
