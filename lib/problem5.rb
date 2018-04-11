def smallest_multiple(number)
  multiple = number

  while true
    for i in 1..number
      break unless (multiple % i).zero?

      if i == number
        return multiple if (multiple % i).zero?
      end
    end
    multiple += 1
  end
end
