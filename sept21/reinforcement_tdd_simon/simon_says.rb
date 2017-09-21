def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, repeat)
  Array.new(repeat,string).join(" ")
end

def start_of_word(string, how_many)
  string[0..how_many-1]
end

def first_word(string)
  string.split(" ")[0]
end
