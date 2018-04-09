require 'prime'

def find_prime(number)
  n = 0
  m = 1
  while true
    if Prime.prime?(m)
      n += 1
      return m if n == number
    end
    m += 1
  end
end
