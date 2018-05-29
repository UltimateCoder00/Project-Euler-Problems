def coin_sums(coins_array, total)
  new_coins_array = get_all_denominator_combinations(coins_array, total)

  k = [new_coins_array[0]]
  (1...(new_coins_array.length)).each do |i|
    k = k.first.product(new_coins_array[i]).map do |x|
      x.inject(:+)
    end.reject do |y|
      y > total
    end.sort

    unless coins_array[i+1] == nil
      unless coins_array[i+1] == 20
        k.select! { |x| (x % coins_array[i+1]).zero? }
      end
    end

    k = [k]
  end

  coins_array.count + k.flatten.count(total)
end

def get_all_denominator_combinations(coins_array, total)
  coins_array.map do |coin|
    get_all_denominator_multiples(coin, total)
  end.first(coins_array.length-1)
end

def get_all_denominator_multiples(coin, total)
  (0...(total/coin)).to_a.map { |value| value*coin }
end
