def longest_collatz_sequence(limit)
  (2...limit).each do |natural_number|
    collatz_numbers << sequence(1, natural_number)
  end

  collatz_numbers.index(collatz_numbers.max)
end

def collatz_numbers
  @collatz_numbers ||= [0, 1]
end

def sequence(count , natural_number)
  return count if natural_number == 1
  return count + collatz_numbers[natural_number] unless collatz_numbers[natural_number] == nil
  natural_number.even? ? sequence(count + 1, even(natural_number)) : sequence(count + 1, odd(natural_number))
end

def odd(natural_number)
  3*natural_number + 1
end

def even(natural_number)
  natural_number / 2
end
