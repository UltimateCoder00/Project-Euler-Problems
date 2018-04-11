def largest_product_in_a_series(series, digit)
  series = series.split("")
  digits_array = series[1..digit]
  product = product(digits_array)

  i = digit

  while series[i] != nil
    digits_array.shift
    digits_array << series[i]
    product = [product, product(digits_array)].max
    i += 1
  end

  product
end

def product(digits_array)
  digits_array.map(&:to_i).inject(:*)
end
