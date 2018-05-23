def bouncy_numbers
  bouncy_number_count = 0
  natural_number = 1

  loop do
    bouncy_number_count += 1 if bouncy?(natural_number)
    return natural_number if exact_percent?(99, bouncy_number_count, natural_number)
    natural_number += 1
  end
end

def bouncy?(natural_number)
  return false if increasing?(natural_number)
  decreasing?(natural_number) ? false : true
end

def increasing?(natural_number)
  number_array = natural_number.to_s.split('')
  number_array == number_array.sort
end

def decreasing?(natural_number)
  number_array = natural_number.to_s.split('')
  number_array == number_array.sort.reverse
end

def exact_percent?(number, bouncy_number_count, natural_number)
  Rational(bouncy_number_count, natural_number) == Rational(number, 100)
end
