def even_fibonacci_numbers(limit)
  loop do
    return sum_of_even_fibonacci_terms if last_fibonacci_term_beyond?(limit)
    calculate_next_fibonacci_term
    add_to_sum_of_even_fibonacci_terms if last_fibonacci_term_even?
  end
end

def sum_of_even_fibonacci_terms
  fibonacci_array.last
end

def fibonacci_array
  @fibonacci_array ||= [[1, 2], 2]
end

def last_fibonacci_term_beyond?(limit)
  last_two_fibonacci_terms.last > limit
end

def last_two_fibonacci_terms
  fibonacci_array.first
end

def calculate_next_fibonacci_term
  last_two_fibonacci_terms.reverse!
  last_two_fibonacci_terms[-1] += last_two_fibonacci_terms.first
end

def add_to_sum_of_even_fibonacci_terms
  fibonacci_array[1] += last_two_fibonacci_terms.last
end

def last_fibonacci_term_even?
  last_two_fibonacci_terms.last.even?
end
