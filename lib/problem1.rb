def multiples_of_three_and_five(number)
  (1...number).inject(0) { |sum, i| (i % 3).zero? || (i % 5).zero? ? sum + i : sum }
end
