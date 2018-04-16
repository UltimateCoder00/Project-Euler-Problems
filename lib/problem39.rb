def integer_right_triangles(number)
  max_perimeter = 1
  array = Array.new(number+1) { 0 }

  for i in 1..number
    for j in (i+1)..number
      c_2 = i**2 + j**2
      c = Math.sqrt(c_2).to_i
      next unless c**2 == c_2

      break if i + j + c > number
      array[i+j+c] += 1

    end
  end

  array.index(array.max)
end
