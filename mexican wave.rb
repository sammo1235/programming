def wave(str)
  if str == ""
  return []
  else
    range = str.length
    y = 0
    arr = []
    until y >= 1
      if str[y] == " "
        y += 1
      else
        arr << str[y].replace(str[y].upcase) + str[y+1..range-1]
        y += 1
      end
        until y == range
          if str[y] == " " 
            y += 1
          else
            arr << str[0..y-1] + str[y].replace(str[y].upcase) + str[y+1..range-1]
            y += 1
          end
      end
    end
    arr
  end
end

# or
def wave(str)
  result = []
  chars = str.downcase.chars
  chars.each_with_index do |char, idx|
    next if char == " "
    result << str[0...idx] + char.upcase + str[idx+1..-1]
  end
  result
end