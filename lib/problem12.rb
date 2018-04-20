require 'prime'

def highly_divisible_triangular_number(number)
  n = 1

  while true
    triangle_number = (n * (n+1)) / 2
    n += 1
    count = 1

    triangle_number.prime_division.each do |x|
      count *= (x.last + 1)
    end

    count += 2

    return triangle_number if count > number
  end
end
