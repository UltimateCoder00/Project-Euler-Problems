def digit_factorials
  sum = 0

  for i in 10..100_000
    if i == curious_number(i)
      sum += i
    end
  end

  sum
end

def factorial(n)
  return 1 if n < 2
  n * factorial(n - 1)
end

def curious_number(i)
  i.to_s.split('').map!(&:to_i).inject(0) do |sum, x|
    sum + factorial(x)
  end
end
