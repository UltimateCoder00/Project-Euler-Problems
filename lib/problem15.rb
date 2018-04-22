def lattice_paths(number)
  sum = 0

  for i in 0..number
    sum += binomial_expansion( (number-1+i) , i )
  end

  sum
end

def factorial(n)
  return 1 if n < 2
  n * factorial(n-1)
end

def binomial_expansion(n, k)
  factorial(n) / ( factorial(n-k) * factorial(k) )
end
