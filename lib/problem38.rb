def pandigital_multiples
  number = 0

  (1..10000).each do |x|
    value = pandigital?(x)

    next if value == false
    number = [number, value.to_i].max
  end

  number
end

def pandigital?(x)
  n = 1
  pandigital = [1,2,3,4,5,6,7,8,9].map { |x| x = x.to_s }
  array = x.to_s.split("")

  while array.length < pandigital.length
    n += 1
    array += (n*x).to_s.split("")
  end

  array.sort == pandigital ? array.join("") : false
end
