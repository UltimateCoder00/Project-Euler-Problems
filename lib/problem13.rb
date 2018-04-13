def large_sum(array_of_numbers)
  array_of_numbers.inject(&:+).to_s[0..9].to_i
end
