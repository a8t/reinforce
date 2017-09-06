

def hash_val(each_key)
  if each_key % 2 == 0 && each_key % 7 == 0
    each_key * 2
  elsif each_key % 2 == 0
    each_key + 1
  elsif each_key % 7 == 0
    each_key - 1
  else
    each_key
  end
end

hash={}

(1..50).each do |each_key|
  hash[each_key] = hash_val(each_key)
end

puts hash
