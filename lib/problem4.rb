require 'common'

def largest_palindrome_product(digit_limit)
  limit = ("9"*digit_limit).to_i
  palindromic_number = 0

  (limit).downto(1) do |a|
    return palindromic_number if a*limit < palindromic_number
    (limit).downto(1) do |b|
      product = a*b
      break if product < palindromic_number
      palindromic_number = [palindromic_number, product].max if palindromic?(product)
    end
  end
end
