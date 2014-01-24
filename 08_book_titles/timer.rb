class Timer
	def initialize
		@timer = 0
	end

	def seconds(seconds)
		@seconds = seconds 
	end 

	def time_string(@seconds=0)
		@timer = time.now
		"00:00:#{seconds}"
	end 
end 