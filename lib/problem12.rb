def highly_divisible_triangular_number(number)
  series = 1
  triangle_number = series

  while true
    count = 2

    for i in 2..(triangle_number/2)
      count += 1 if (triangle_number % i).zero?
    end

    return triangle_number if count > number

    series += 1
    triangle_number += series
  end
end
