def digit_fifth_powers
  (10..1_000_000).to_a.select do |x|
    x == x.to_s.chars.map(&:to_i).map { |y| y**5 }.sum
  end.sum
end
