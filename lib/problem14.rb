def longest_collatz_sequence
  count = 0
  starting_series = 2

  for i in 2...1000000
    temp_count = sequence(1 , i)
    starting_series = i if temp_count > count
    count = [count, temp_count].max
  end

  starting_series
end

def sequence(count , n)
  return count if n == 1
  n.even? ? sequence(count + 1, even(n)) : sequence(count + 1, odd(n))
end

def odd(n)
  3*n + 1
end

def even(n)
  n / 2
end
