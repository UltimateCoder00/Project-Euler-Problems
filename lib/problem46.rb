require 'prime'

def goldbachs_other_conjecture
  prime_array = (1..100000).select { |x| Prime.prime?(x) }
  composite_number = (1..100000).reject { |x| x.even? }.reject {|y| Prime.prime?(y) }[1..-1]

  composite_number.each do |x|
    prime_array.each do |y|
      break if composite_number(x, y)
      next if y < x
      return x
    end
  end
end

def composite_number(x, y)
  n = 0
  while true
    n += 1
    return true if ( y + 2*(n**2) ) == x
    return false if ( y + 2*(n**2) ) > x
  end
end
