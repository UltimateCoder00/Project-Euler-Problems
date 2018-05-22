require 'common'

def largest_product_in_a_series(series, digit)
  array_of_digits(series.chars, digit).map { |x| digit_product(x) }.max
end

def array_of_digits(series, digit)
  loop do
    return digits_array unless series.length >= digit
    series_end = series.last(digit)
    series.pop
    contains_zero?(series_end) ? count_zeros(series_end).times { series.pop } : digits_array << series_end
  end
end

def digits_array
  @digits_array ||= []
end

def contains_zero?(digit_array)
  digit_array.include?('0')
end

def count_zeros(series_end)
  series_end.reverse.index('0')
end
