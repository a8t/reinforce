def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  array.inject(0) { |product, each| product + each}
  # semi joke answer: array.reduce(:+) || 0
end
