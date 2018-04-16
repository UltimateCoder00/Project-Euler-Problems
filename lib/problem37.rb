require 'prime'

def truncatable_primes
  array = []
  i = 10

  while true
    if Prime.prime?(i)
      array << i if truncatable_primes?(i)
    end

    return array.inject(:+) if array.count == 11
    i += 1
  end
end

def truncatable_primes?(integer)
  number_array = integer.to_s.split("").map! { |value| value = value.to_i }
  number_length = number_array.length

  number_array1 = number_array.dup
  number_array2 = number_array.dup

  for i in 0...(number_length-1)
    number_array1.shift
    Prime.prime?(number_array1.join.to_i) ? next : (return false)
  end

  for i in 0...(number_length-1)
    number_array2.pop
    Prime.prime?(number_array2.join.to_i) ? next : (return false)
  end

  true
end
