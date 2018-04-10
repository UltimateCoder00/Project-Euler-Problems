def find_fibonacci_number(number)
  first_number = 1
  second_number = 1
  finonacci_number = first_number + second_number
  i = 3

  while finonacci_number.to_s.length < number
    first_number = second_number
    second_number = finonacci_number
    finonacci_number = first_number + second_number
    i += 1
  end
  i
end
