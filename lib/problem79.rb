def passcode_derivation
  passcode = ""
  array = render_db(read_file)
  unique_elements = unique_elements(array)

  while unique_elements.count > 0
    if array.uniq.count == 1
      passcode += array.first
      break
    end

    first_characters = characters(array, 0..0)
    other_characters = characters(array, 1..-1)
    passcode += unique_first_character(first_characters, other_characters)
    array = remove_character(array, passcode[-1])
    unique_elements.delete(passcode[-1])
  end

  passcode.to_i
end

def read_file
  keylog_array = []
  File.open("./files/keylog.txt", "r") do |f|
    f.each_line do |line|
      keylog_array << line
    end
  end

  keylog_array
end

def render_db(array)
  array.uniq!.map! { |x| x = x.to_i.to_s }.sort!
end

def unique_elements(array)
  array.map { |x| x.split("") }.flatten!.uniq!.sort!
end

def characters(array, range)
  array.map { |x| x = x[range].split("") }.flatten!.uniq!.sort!
end

def unique_first_character(first_characters, other_characters)
  first_characters.reject { |x| other_characters.include?(x) }.pop
end

def remove_character(array, char)
  array.map { |x| x = x.delete(char) }.sort.reject do |ele|
    ele.length == 0
  end
end

# ["0", "1", "2", "3", "6", "7", "8", "9"]
