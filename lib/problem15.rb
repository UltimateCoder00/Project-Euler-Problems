def lattice_paths(number)
  binomial_expansion(2*number , number)
end

def factorial(n)
  return 1 if n < 2
  n * factorial(n-1)
end

def binomial_expansion(n, k)
  factorial(n) / ( factorial(n-k) * factorial(k) )
end
