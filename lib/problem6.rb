def sum_square_difference(number)
  ((1..number).to_a.sum)**2 - (1..number).to_a.map! { |x| x*x }.sum
end
