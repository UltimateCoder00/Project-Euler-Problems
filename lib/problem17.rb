require 'humanize'

def number_letter_counts(number)
  (1..number).inject(0) do |sum, number|
    sum += number.humanize.split("").reject do |char|
      (char == "-") || (char == " ")
    end.count
  end
end
