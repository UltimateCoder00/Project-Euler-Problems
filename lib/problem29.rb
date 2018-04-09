def distinct_powers(a, b)
 array = []

 for i in a.min..a.max
   for j in b.min..b.max
     array << i**j unless array.include?(i**j)
   end
 end

 array.count
end
