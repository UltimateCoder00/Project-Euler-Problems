require_relative 'common'

def largest_prime_factor(natural_number)
  prime_divisions(natural_number).last.first
end
