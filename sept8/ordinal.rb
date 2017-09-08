def ordinal(num)

  return "error - not an integer!" if !num.is_a?(Integer)

  #abs so that it works for negative numbers
  if num.abs.between?(11,20)
    return num.to_s + "th"
  else
    # next line only looks at last digit of int. 
    # the digits method returns an array of the digits
    # but it reverses them them idk why. 123.digits = [3,2,1]
    case num.abs.digits.first
    when 1
      return num.to_s + "st"
    when 2
      return num.to_s + "nd"
    when 3
      return num.to_s + "rd"
    else
      return num.to_s + "th"
    end
  end

end

puts ordinal(1)
puts ordinal(2)
puts ordinal(13)
puts ordinal(14)
puts ordinal(21)
puts ordinal(24)
puts ordinal(23)
puts ordinal(-24)
puts ordinal(-1135)
puts ordinal(-13132412)
puts ordinal(-13)
puts ordinal(-1123.4)
