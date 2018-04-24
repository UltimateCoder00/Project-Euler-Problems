require 'prime'

def quadratic_primes
  product = 0
  primes = 0

  for a in -999..1000
    for b in -999..1000
      n = 0
      count_primes = 0

      while true
        if Prime.prime?(n**2 + a*n + b)
          count_primes += 1
          n += 1
        else
          break
        end
      end

      if count_primes > primes
        primes = count_primes
        product = a*b
      end
    end
  end

  product
end
