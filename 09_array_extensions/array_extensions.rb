class Array
	def sum

		a = 0 
  
		self.each do |b|
  			a = a + b
		end

		a
	end

	def square 
		self.collect do |num| num * num end 
	end

	def square! 
		self.collect! do |num| num * num end 
	end
end 