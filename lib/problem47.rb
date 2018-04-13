require 'prime'

def distinct_primes_factors(number)
  consecutive_number = 2

  while true
    for i in consecutive_number...(consecutive_number+number)
      break if prime_factors(i, number).count != number
      return consecutive_number if i == (consecutive_number+number-1)
    end

    consecutive_number += 1
  end
end

def prime_factors(value, number)
  array = []

  for i in 2..(value/2)
    if Prime.prime?(i)
      array << i if (value % i).zero?
    end
  end

  array
end
