require 'common'

ABUNDANT_PAIR_SUMS_LIMIT = 28_123
RANGE_OF_NON_ABUNDANT_PAIR_SUM = (1..ABUNDANT_PAIR_SUMS_LIMIT)

def nonabundant_sums
  calculate_abundant_numbers

  loop do
    break if abundant_numbers.empty?
    number = abundant_numbers.shift
    abundant_numbers_sums << number * 2

    abundant_numbers.each do |x|
      break if x + number > ABUNDANT_PAIR_SUMS_LIMIT
      abundant_numbers_sums << x + number
    end
  end

  sum_of((RANGE_OF_NON_ABUNDANT_PAIR_SUM.to_a - abundant_numbers_sums.uniq!))
end

def abundant_numbers
  @abundant_numbers ||= []
end

def abundant_numbers_sums
  @abundant_numbers_sums ||= []
end

def calculate_abundant_numbers
  RANGE_OF_NON_ABUNDANT_PAIR_SUM.each do |natural_number|
    proper_divisors = divisors(natural_number)[0..-2]
    if sum_of(proper_divisors) > natural_number
      abundant_numbers << natural_number
    end
  end
end

def sum_of(array)
  array.sum
end
