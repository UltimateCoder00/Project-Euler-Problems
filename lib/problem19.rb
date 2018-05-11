require 'date'

def counting_sundays(start_date, end_date)
  (start_date.year..end_date.year).to_a.map do |year|
    first_sundays_in_a(year)
  end.inject(:+)
end

def first_sundays_in_a(year)
  (1..12).to_a.map do |month|
    Date.new(year, month, 1).sunday?
  end.count(true)
end
