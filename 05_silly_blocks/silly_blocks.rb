def reverser
	array = yield.split(" ")
	new_array = array.collect {|word| word.reverse}
	new_array.join(" ")
end 

def adder(num=1)
	yield + num
end 

def repeater(n=1)
	n.times {yield}
end 
