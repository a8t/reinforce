arr = ["Totam", "ut", "odit", "quis", "Maiores", "unde", "EX", "EST", "corporis"]

arr.each do | each_string |
  if each_string.length > 4 && each_string == each_string.downcase
    puts "long and lowercase"
  elsif each_string.length > 4
    puts "long"
  elsif each_string == each_string.downcase
    puts "lowercase"
  else
    puts each_string
  end
end
