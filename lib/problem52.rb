def permuted_multiples
  natural_number = 1
  loop do
    return natural_number if all_multiples_same?(natural_number)
    natural_number += 1
  end
end

def all_multiples_same?(natural_number)
  (2..6).each do |i|
    return false unless same_digits?(natural_number, i * natural_number)
  end

  true
end

def same_digits?(int1, int2)
  int1.to_s.split('').sort == int2.to_s.split('').sort
end
