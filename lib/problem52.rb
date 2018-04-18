def permuted_multiples
  i = 1
  while true
    a = i.to_s.split("").sort
    b = (2*i).to_s.split("").sort
    c = (3*i).to_s.split("").sort
    d = (4*i).to_s.split("").sort
    e = (5*i).to_s.split("").sort
    f = (6*i).to_s.split("").sort

    if a == b
      if b == c
        if c == d
          if d == e
            if e == f
              return i
            end
          end
        end
      end
    end

    i += 1
  end
end
