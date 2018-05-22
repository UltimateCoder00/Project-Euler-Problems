require 'common'

def semiprimes(limit)
  primes = primes_up_to((limit / 2) + 1)
  primes.each { |prime_one| compute_semiprimes(primes, prime_one, limit) }
  semiprimes_array.uniq.count
end

def semiprimes_array
  @semiprimes_array ||= []
end

def compute_semiprimes(primes, prime_one, limit)
  primes.each do |prime_two|
    break if prime_one * prime_two > limit
    semiprimes_array << prime_one * prime_two
  end
end
