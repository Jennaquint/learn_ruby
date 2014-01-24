class Temperature
	def initialize(hash)
		@hash = hash
	end 

	def to_fahrenheit
		return @hash[:f] if @hash[:f]
		@hash[:c] * 9/5 + 32
	end 

	def to_celsius
		return @hash[:c] if @hash[:c]
		(@hash[:f] - 32) * 5/9
	end

	def self.in_celsius(temp)
		new({:c => temp}) 
	end 

	def self.in_fahrenheit(temp)
		new({:f => temp})
	end 
end 

class Celsius < Temperature
	def initialize(temp)
		@hash = {:c => temp}
	end 
end 

class Fahrenheit < Temperature
	def initialize(temp)
		@hash = {:f => temp}
	end 
end 