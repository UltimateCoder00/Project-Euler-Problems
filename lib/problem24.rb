def lexicographic_permutations(set, limit)
  set.permutation.to_a[limit - 1].join.to_i
end
