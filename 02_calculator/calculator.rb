def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)

a = 0 
  
array.each do |b|
  a = a + b
end

a 
end

add(0,0)
add(2,2)
add(2,6)

subtract(10,4)

puts sum([])
puts sum([7])   
puts sum([7,11])
puts sum([1,3,5,7,9]) 

