require 'common'

def factorial_digit_sum(limit)
  digit_sum(factorial(limit).to_s.split(''))
end
