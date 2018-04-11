def even_fibonacci_numbers(number)
  sum = 2

  a = 1
  b = 2
  c = a + b

  while c <= number
    a = b
    b = c
    c = a + b
    sum += c if (c % 2).zero?
  end

  sum
end
