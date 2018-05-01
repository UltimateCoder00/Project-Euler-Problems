def sum_square_difference(limit)
  sum_squared(limit) - squared_sum(limit)
end

def sum_squared(limit)
  range_array(limit).sum**2
end

def squared_sum(limit)
  range_array(limit).map! { |x| x**2 }.sum
end

def range_array(limit)
  (1..limit).to_a
end
