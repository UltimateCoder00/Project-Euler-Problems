require 'common'

def sum_square_difference(limit)
  sum_squared(limit) - array_squared_sum(range_array(limit))
end

def sum_squared(limit)
  range_array(limit).sum**2
end

def range_array(limit)
  (1..limit).to_a
end
