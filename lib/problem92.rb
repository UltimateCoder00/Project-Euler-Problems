def square_digit_chains(limit)
  count = 0

  (1...limit).each do |natural_number|
    count += chain(natural_number)
  end

  count
end

def chain(natural_number)
  loop do
    natural_number = digit_square(natural_number)
    return 0 if natural_number == 1
    return 1 if natural_number == 89
  end
end

def digit_square(natural_number)
  natural_number.to_s.chars.map(&:to_i).map do |val|
    val * val
  end.sum
end
