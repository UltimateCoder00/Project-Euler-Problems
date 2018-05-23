def cubic_permutations(limit)
  natural_number = 1

  loop do
    cube = natural_number**3
    cube_sort = cube.to_s.chars.sort
    hash_two.include?(cube_sort) ? add_to_hash_one(cube_sort) : add_to_hashes(cube, cube_sort)
    return hash_two[cube_sort] if hash_one[hash_two[cube_sort]] == limit
    natural_number += 1
  end
end

def hash_one
  @hash_one ||= {}
end

def hash_two
  @hash_two ||= {}
end

def add_to_hash_one(cube_sort)
  hash_one[hash_two[cube_sort]] += 1
end

def add_to_hashes(cube, cube_sort)
  hash_two[cube_sort] = cube
  hash_one[hash_two[cube_sort]] = 1
end
