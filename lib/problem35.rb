require 'prime'

def circular_primes(number)
  array = []

  for i in 2..number
    if Prime.prime?(i)
      circular?(i) ? array << i : next
    end
  end

  array.count
end

def circular?(integer)
  number_array = integer.to_s.split("").map! { |value| value = value.to_i }
  number_length = number_array.length

  array = []

  for i in 0...number_length
    number = number_array.rotate(i).join.to_i
    Prime.prime?(number) ? next : (return false)
  end

  true
end
