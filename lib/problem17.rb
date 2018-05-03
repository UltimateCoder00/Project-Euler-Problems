require 'humanize'

def number_letter_counts(limit)
  (1..limit).inject(0) do |sum, number|
    sum += number.humanize.split("").reject do |char|
      (char == "-") || (char == " ")
    end.count
  end
end
