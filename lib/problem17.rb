require 'humanize'

def number_letter_counts(limit)
  (1..limit).map do |number|
    number.humanize.gsub(/[-\ ]/, '').length
  end.inject(:+)
end
