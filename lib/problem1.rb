require_relative 'common'

def multiples_of_three_and_five(limit)
  (1...limit).inject(0) do |sum, natural_number|
    divisible_by_three_and_five?(natural_number) ? sum + natural_number : sum
  end
end

def divisible_by_three_and_five?(natural_number)
  divisible?(natural_number, 3) || divisible?(natural_number, 5)
end
