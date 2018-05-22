require 'common'

def names_scores
  render(read_file('names.txt')).each_with_index.map do |value, index|
    value = value.split('').map { |x| number_from(x) }
    digit_sum(value) * (index + 1)
  end.sum
end
