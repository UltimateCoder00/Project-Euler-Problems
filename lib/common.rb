require 'prime'

def prime?(natural_number)
  Prime.prime?(natural_number)
end

def prime_divisions(natural_number)
  Prime.prime_division(natural_number)
end

def first_primes(natural_number)
  Prime.first(natural_number)
end

def primes_up_to(natural_number)
  Prime.each(natural_number).to_a
end

def divisible?(natural_number_a, natural_number_b)
  (natural_number_a % natural_number_b).zero?
end

def palindromic?(natural_number)
  natural_number = natural_number.to_s
  natural_number == natural_number.reverse
end

def lcm(range)
  range.min == 1 ? range = range.to_a[1..-1] : range = range.to_a
  range.map! {|x| prime_divisions(x).pop}.uniq!
  range.map! {|x| x[0]**x[1]}
  range.reject! {|x| range.any? {|y| x == y ? false : divisible?(y, x)}}
  range.inject(1) {|result, element| result * element}
end

def digit_product(natural_number_string_array)
  natural_number_string_array.map(&:to_i).inject(:*)
end

def array_squared_sum(natrual_number_array)
  natrual_number_array.map {|x| x*x}.sum
end

def squared_sum(natural_number_a, natural_number_b)
  natural_number_a*natural_number_a + natural_number_b*natural_number_b
end

def square_root(integer)
  Math.sqrt(integer)
end

def integer_square_root(integer)
  Integer.sqrt(integer)
end
