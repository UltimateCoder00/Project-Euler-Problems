require 'common'

def largest_product_in_a_grid(array)
  grid_lines = [array,
                array.transpose,
                diagonalize(array),
                diagonalize(array.reverse).transpose]

  max_of(max_product_in_each_plane_of(grid_lines))
end

def max_of(array)
  array.max
end

def diagonalize(array)
  array.each_with_index.map { |value, index| value.rotate(index) }
end

def max_product_in_each_plane_of(grid)
  grid.map { |x| max_of(max_product_in_row(x)) }
end

def max_product_in_row(array)
  array.map { |x| max_of(product_of_fours(x.dup)) }
end

def product_of_fours(natural_numbers_array)
  chunk_into_fours(natural_numbers_array).map { |x| digit_product(x) }
end

def chunk_into_fours(natural_number_array)
  natural_number_array.each_with_index.map do |_val, index|
    natural_number_array.rotate(index).last(4)
  end.rotate(1).drop(3)
end
