def special_pythagorean_triplet(number)
  for a in 1..number
    for b in 1..number
      break if a + b > number

      c_2 = a**2 + b**2
      c = Math.sqrt(c_2).to_i
      if c_2 == c**2
        if a + b + c == number
          return a*b*c
        end
      end
    end
  end

end
