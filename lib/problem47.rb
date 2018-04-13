require 'prime'

def distinct_primes_factors(number)
  prime_array = [2,3,5]
  first_of_consecutive_number = 6

  while true
    if Prime.prime?(first_of_consecutive_number)
      prime_array << first_of_consecutive_number
      first_of_consecutive_number += 1
      next
    end

    bool = false

    ((first_of_consecutive_number+1)...(first_of_consecutive_number+number)).to_a.each do |x|
      if Prime.prime?(x)
        prime_array << x
        first_of_consecutive_number = x+1
        bool = true
        break
      end
    end

    next if bool

    break_loop = false

    for i in first_of_consecutive_number...(first_of_consecutive_number+number)
      count = 0

      prime_array.each do |x|
        if (i % x).zero?
          count += 1

          if count > number
            break_loop = true
            break
          end
        end
      end

      if count == number
        next
      else
        break_loop = true
        break
      end
    end

    break_loop ? first_of_consecutive_number += 1 : (return first_of_consecutive_number)
  end
end
