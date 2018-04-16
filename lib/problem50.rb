require 'prime'

def consecutive_prime_sum(number)
  prime_array = []

  for i in 2..number
    if Prime.prime?(i)
      prime_array << i
      break if i > number / 2
    end
  end

  count = 0
  prime_sum = 0
  prime = 0

  for i in 0...prime_array.length
    for j in (i+1)...prime_array.length
      array = prime_array[i..j]

      if count < array.count
        sum = array.inject(:+)

        break if sum > number

        if Prime.prime?(sum)
          prime = sum
          count = array.count
        end
      end
    end
  end

  prime
end
