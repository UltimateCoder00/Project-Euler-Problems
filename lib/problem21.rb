require 'prime'

def amicable_numbers(number)
  remove_primes(number).select do |i|
    amicable?(i)
  end.inject(:+)
end

def remove_primes(number)
  (1...number).reject { |x| Prime.prime?(x) }
end

def amicable?(i)
  sum = factor_sum(i)
  factor_sum(sum) == i && sum != i
end

def factor_sum(x)
  (1..(x / 2)).inject(0) { |count, i| (x % i).zero? ? count + i : count }
end
