def echo(string)
	string
end 

def shout(string)
	string.upcase
end 

def repeat(string, num=1)
	if num == 1 
	(string + " " + string)
	else 
	((string + " ") * num).strip
	end 
end 

def start_of_word(string, num)
	string[0..num - 1]
end

def first_word(string)
	string_array = string.split(" ")
	string_array[0]
end

def titleize(string)
	string_array = string.split(" ")
	count = 0

	new_array = string_array.collect do |x| 
		count += 1
		ignored_words = %w(a an the and but or for nor of over)

		if ignored_words.include?(x) && count > 1
			x.downcase 
		else
			x.capitalize
		end 
	end 

	new_array.join(" ")
end

echo("hello")
echo("bye")

shout("hello")
shout("hello world")

repeat("hello")
repeat("hello", 3)

start_of_word("hello", 1)
puts start_of_word("Bob", 2)

s = "abcdefg"
start_of_word(s, 1)
start_of_word(s, 2)
start_of_word(s, 3)

first_word("Hello World")
first_word("oh dear")

puts titleize("jaws")
puts titleize("david copperfield")
puts titleize("war and peace")
puts titleize("the bridge over the river kwai")