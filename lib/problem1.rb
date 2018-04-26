def multiples_of_three_and_five(limit)
  (1...limit).inject(0) do |sum, natural_number|
    divisible_by_three_and_five?(natural_number) ? sum + natural_number : sum
  end
end

def divisible_by_three_and_five?(natural_number)
  divisible_by_three?(natural_number) || divisible_by_five?(natural_number)
end

def divisible_by_three?(natural_number)
  (natural_number % 3).zero?
end

def divisible_by_five?(natural_number)
  (natural_number % 5).zero?
end
