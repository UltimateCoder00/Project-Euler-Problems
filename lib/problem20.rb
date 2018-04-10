def factorial_digit_sum(number)
  factorial = factorial(number)
  factorial.to_s.split("").inject(0) { |sum, x| sum + x.to_i}
end

def factorial(number)
  return 1 if number == 1
  number * factorial(number-1)
end
