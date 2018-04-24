require 'prime'

def amicable_numbers(number)
  array = []

  for i in 1...number
    next if Prime.prime?(i)
    next if array.include?(i)

    factor_sum = factor_sum(i)

    if factor_sum(factor_sum) == i
      unless factor_sum == i
        array << i
        array << factor_sum
      end
    end
  end

  array.inject(:+)
end

def factor_sum(x)
  sum = 0

  for i in 1..(x/2)
    sum += i if (x % i).zero?
  end

  sum
end
