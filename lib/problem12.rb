require 'common'

def highly_divisible_triangular_number(limit)
  n = 1

  loop do
    return triangle_number(n) if enough_factors?(n, limit)
    n += 1
  end
end

def triangle_number(natural_number)
  (natural_number * (natural_number+1)) / 2
end

def enough_factors?(natural_number, limit)
  number_of_factors_of(natural_number) > limit
end

def number_of_factors_of(natural_number)
  prime_divisions(triangle_number(natural_number)).map do |x|
    x.last + 1
  end.inject(1) {|product, value| product *= value} + 2
end
