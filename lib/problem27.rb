require 'prime'

def quadratic_primes
  product = 0
  primes = 0

  a = (-999...1000).select { |x| x.odd? }
  b = (-1000..1000).select { |x| Prime.prime?(x) }


  a.each do |a|
    b.each do |b|
      n = 1

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
