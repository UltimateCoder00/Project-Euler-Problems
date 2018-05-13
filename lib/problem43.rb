require "common"

def substring_divisibility
  array = [0,1,2,3,4,5,6,7,8,9].permutation.to_a

  loop do
    break unless array.first.first == 0
    array.shift
  end

  count = 0

  array.each do |x|
    next unless divisible?(number(x, 2, 3, 4), 2)
    next unless divisible?(number(x, 3, 4, 5), 3)
    next unless divisible?(number(x, 4, 5, 6), 5)
    next unless divisible?(number(x, 5, 6, 7), 7)
    next unless divisible?(number(x, 6, 7, 8), 11)
    next unless divisible?(number(x, 7, 8, 9), 13)
    next unless divisible?(number(x, 8, 9, 10), 17)
    count += x.join.to_i
  end

  count
end

def number(array, a, b, c)
  (array[a-1].to_s + array[b-1].to_s + array[c-1].to_s).to_i
end
