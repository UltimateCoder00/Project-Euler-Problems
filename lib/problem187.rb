require 'common'

def semiprimes(limit)
  primes = primes_up_to((limit / 2) + 1)
  semiprimes = []

  primes.each do |prime_one|
    primes.each do |prime_two|
      break if prime_one * prime_two > limit
      semiprimes << prime_one * prime_two
    end
  end

  semiprimes.uniq.count
end
