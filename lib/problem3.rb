require 'prime'

def largest_prime_factor(number)
  integer = 1

  number.times do
    if number % integer == 0
      factor = number / integer
      return factor if Prime.prime?(factor)
    end

    integer += 1
  end
end
