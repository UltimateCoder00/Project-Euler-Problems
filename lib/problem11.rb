def largest_product_in_a_grid(array)
  max_product = 0

  for i in 0...array.length
    for j in 0...(array.length-3)
      max_product = [max_product,array[i][j]*array[i][j+1]*array[i][j+2]*array[i][j+3]].max
    end
  end

  for i in 0...(array.length-3)
    for j in 0...array.length
      max_product = [max_product,array[i][j]*array[i+1][j]*array[i+2][j]*array[i+3][j]].max
    end
  end

  for i in 0...(array.length-3)
    for j in 0...(array.length-3)
      max_product = [max_product,array[i][j]*array[i+1][j+1]*array[i+2][j+2]*array[i+3][j+3]].max
    end
  end

  for i in 3...array.length
    for j in 0...(array.length-3)
      max_product = [max_product,array[i][j]*array[i-1][j+1]*array[i-2][j+2]*array[i-3][j+3]].max
    end
  end

  max_product
end
