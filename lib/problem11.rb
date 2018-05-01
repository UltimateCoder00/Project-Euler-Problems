require 'common'

def largest_product_in_a_grid(array)
  horizontal_array = array
  vertical_array = array.transpose
  diagonal_array1 = diagonal_array(array)
  diagonal_array2 = diagonal_array(array.reverse).transpose

  four_digit_max_product = 0

  four_digit_max_product = max_product(four_digit_max_product, horizontal_array)
  four_digit_max_product = max_product(four_digit_max_product, vertical_array)
  four_digit_max_product = max_product(four_digit_max_product, diagonal_array1)
  four_digit_max_product = max_product(four_digit_max_product, diagonal_array2)

  four_digit_max_product
end

def max_product(four_digit_max_product, array)
  array.each do |x|
    four_digit_max_product = [four_digit_max_product, four_digit_max_product(x.dup)].max
  end
  four_digit_max_product
end

def four_digit_max_product(natural_number_array)
  horizontal_product = 0
  loop do
    break if natural_number_array.length < 4
    horizontal_product = [horizontal_product, digit_product(natural_number_array.last(4))].max
    natural_number_array.pop
  end

  horizontal_product
end

def diagonal_array(array)
  new_array = []

  array.each_with_index do |array, index|
    new_array << array.rotate(index)
  end

  new_array
end
