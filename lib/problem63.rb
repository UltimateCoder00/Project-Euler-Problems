def powerful_digit_counts
  count = 0
  i = 1

  while true
    j = 1

    while true
      break if i < (j**i).to_s.length
      count += 1 if i == (j**i).to_s.length

      j += 1
    end

    i += 1
    break if i == 49
  end

  count
end
