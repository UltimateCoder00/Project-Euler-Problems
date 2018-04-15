def power_digit_sum(number)
  (2**number).to_s.split("").inject(0) {|sum, x| sum += x.to_i}
end
