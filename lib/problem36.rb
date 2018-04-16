def double_base_palindromes(number)
  sum = 0

  for i in 1...number
    if (palindromes?(i.to_s.split("")) && palindromes?(i.to_s(2).split("")))
      sum += i
    end
  end

  sum
end

def palindromes?(array)
  for i in 0..(array.length/2)
    array[i] == array[-1-i] ? next : (return false)
  end

  true
end
