require 'prime'

def find_prime(number)
  count = 0
  integer = 0

  while true
    integer += 1

    if Prime.prime?(integer)
      count += 1
      return integer if count == number
    end
  end
end
