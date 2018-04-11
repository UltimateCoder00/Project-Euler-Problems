def largest_palindrome_product(number)
  integer = ("9"*number).to_i
  palindromic_number = 0

  for i in 1..integer
    for j in 1..integer
      k = i*j

      palindromic_number = [palindromic_number, k].max if palindromic?(k)
    end
  end

  palindromic_number
end

def palindromic?(number)
  number_array = number.to_s.split("")

  for i in 0...(number_array.length/2)
    return false if number_array[i] != number_array[-(i+1)]
  end

  true
end
