require 'common'

def digit_cancelling_fractions
  counting = []

  (10...99).each do |numerator|
    ((numerator+1)..99).each do |denominator|
      next if (denominator % 10).zero?
      next if numerator == palindromic(denominator)

      a = numerator.to_s.chars
      b = denominator.to_s.chars

      next unless b.include?(a.first) || b.include?(a.last)
      b.include?(a.first) ? k = a.first : k = a.last
      a.delete(k)
      b.delete(k)
      a = a.pop.to_i
      b = b.pop.to_i

      if (numerator / denominator.to_f) == (a / b.to_f)
        counting << [a, b]
      end
    end
  end

  a = 1
  b = 1

  counting.each do |x|
    a *= x.first
    b *= x.last
  end

  Rational(a, b).denominator
end
