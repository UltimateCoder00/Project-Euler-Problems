require 'common'

def digit_cancelling_fractions
  (10...99).each do |numerator|
    ((numerator+1)..99).each do |denominator|
      next if skip?(numerator, denominator)

      a = numerator.to_s.chars.map(&:to_i)
      b = denominator.to_s.chars.map(&:to_i)
      next unless b.include?(a.first) || b.include?(a.last)
      a, b = remove_common(a, b)

      take_product(a, b) if (numerator / denominator.to_f) == (a / b.to_f)
    end
  end

  Rational(fractions_product[0], fractions_product[1]).denominator
end

def fractions_product
  @fractions_product ||= [1, 1]
end

def skip?(numerator, denominator)
  return true if (denominator % 10).zero?
  return true if numerator == palindromic(denominator)
end

def remove_common(a, b)
  common = (a & b).first
  a.delete_at(a.index(common))
  b.delete_at(b.index(common))

  [a.first, b.first]
end

def take_product(numerator, denominator)
  fractions_product[0] *= numerator
  fractions_product[1] *= denominator
end
