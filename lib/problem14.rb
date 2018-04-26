def longest_collatz_sequence
  count = 0
  starting_series = 2

  for i in 2...1_000_000
    array[i] = sequence(1, i)
    starting_series = i if array[i] > count
    count = [count, array[i]].max
  end

  starting_series
end

def array
  @array ||= [0, 1]
end

def sequence(count , n)
  return count if n == 1
  return count + array[n] unless array[n] == nil
  n.even? ? sequence(count + 1, even(n)) : sequence(count + 1, odd(n))
end

def odd(n)
  3*n + 1
end

def even(n)
  n / 2
end
