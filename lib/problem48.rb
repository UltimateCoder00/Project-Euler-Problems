def self_powers(number)
  sum = 0
  integer = 1

  number.times do
    sum += integer**integer
    integer += 1
  end
  
  sum.to_s[-10..-1].to_i
end
