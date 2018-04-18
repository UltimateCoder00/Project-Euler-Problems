def powerful_digit_sum
  sum = 0

  for i in 1...100
    for j in 1...100
      digit_sum = (i**j).to_s.split("").map do |x|
        x = x.to_i
      end.inject(:+)
      
      sum = [sum, digit_sum].max
    end
  end

  sum
end
