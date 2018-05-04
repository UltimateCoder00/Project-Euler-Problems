def coin_sums(coins_array, total)
  count = coins_array.count

  a = coins_array.dup

  coins_array.map! do |coin|
    (0...(total/coin)).to_a.map { |x| x*coin }
  end
  coins_array.pop

  new_array = [coins_array.first]

  (1...(coins_array.length)).each do |i|
    new_array += [coins_array[i]]
    k = new_array.first.product(new_array.last).map do |x|
      x.inject(:+)
    end.reject do |y|
      y > total
    end.sort

    unless a[i+1] == nil || a[i+1] == 20
      k.select! { |x| (x % a[i+1]).zero? }
    end

    new_array = [k]
  end

  count += new_array.flatten.count(total)
end
