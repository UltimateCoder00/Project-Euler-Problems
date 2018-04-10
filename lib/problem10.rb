require 'prime'

def summation_of_primes(number)
  sum = 2
  integer = 1

  while integer < number
    sum += integer if Prime.prime?(integer)
    integer += 2
  end

  sum
end
