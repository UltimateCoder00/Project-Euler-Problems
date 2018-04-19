def combinatoric_selections
  count = 0

  for n in 0..100
    for r in 0..n
      count += 1 if factorial(n)/(factorial(r)*factorial(n-r)) >= 1000000
    end
  end

  count
end

def factorial(n)
  return 1 if n < 1
  n * factorial(n-1)
end
