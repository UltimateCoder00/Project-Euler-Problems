require 'prime'

def find_prime(number)
  return 0 if number == 1
  return 1 if number == 2

  count = 1
  integer = 1

  while true
    integer += 2

    if Prime.prime?(integer)
      count += 1
      return integer if count == number
    end
  end
end
