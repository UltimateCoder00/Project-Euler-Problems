def champernownes_constant
  number = 1
  product = 1
  string = "0123456789"
  values = "x0x1x2x3x4x5x6x7x8x9"
  string_length = string.length
  position1 = 10
  position2 = 100
  position3 = 1_000
  position4 = 10_000
  position5 = 100_000
  position6 = 1_000_000
  bool1 = false
  bool2 = false
  bool3 = false
  bool4 = false
  bool5 = false
  bool6 = false

  loop do
    if string_length >= 11
      if bool1 == false
        p string[position1].to_i
        product *= string[position1].to_i
        bool1 = true
      end
    end

    if string_length >= 101
      if bool2 == false
        p string[position2].to_i
        product *= string[position2].to_i
        bool2 = true
      end
    end

    if string_length >= 1_001
      if bool3 == false
        p string[position3].to_i
        product *= string[position3].to_i
        bool3 = true
      end
    end

    if string_length >= 10_001
      if bool4 == false
        p string[position4].to_i
        product *= string[position4].to_i
        bool4 = true
      end
    end

    if string_length >= 100_001
      if bool5 == false
        p string[position5].to_i
        product *= string[position5].to_i
        bool5 = true
      end
    end

    if string_length >= 1_000_001
      if bool6 == false
        p string[position6].to_i
        product *= string[position6].to_i
        bool6 = true
        break
      end
    end

    position1 -= string.length
    position2 -= string.length
    position3 -= string.length
    position4 -= string.length
    position5 -= string.length
    position6 -= string.length

    string = values.gsub("x", number.to_s)
    number += 1
    string_length += string.length
  end

  product
end
