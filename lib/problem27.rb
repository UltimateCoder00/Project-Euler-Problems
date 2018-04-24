require 'prime'

def quadratic_primes
  product = 0
  primes = 0

  (-999...1000).each do |a|
    (-1000..1000).each do |b|
      n = 0

      while true
        Prime.prime?(n**2 + a*n + b) ? n += 1 : break
      end

      if n > primes
        primes = n
        product = a*b
      end
    end
  end

  product
end
