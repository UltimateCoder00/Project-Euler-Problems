require 'common'

def power_digit_sum(limit)
  digit_sum((2**limit).to_s.split(''))
end
