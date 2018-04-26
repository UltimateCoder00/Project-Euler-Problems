require 'common'

def largest_palindrome_product(digit_limit)
  limit = ("9"*digit_limit).to_i
  largest_palindromic_number = 0

  (limit).downto(1) do |a|
    return largest_palindromic_number if a*limit < largest_palindromic_number
    (limit).downto(1) do |b|
      product = a*b
      break if product < largest_palindromic_number
      largest_palindromic_number = [largest_palindromic_number, product].max if palindromic?(product)
    end
  end
end
