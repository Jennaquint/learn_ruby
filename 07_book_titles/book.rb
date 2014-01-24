class Book
	attr_accessor :title

	def title=(title)
		@title = title 

		array = title.split(" ")

		count = 0

		exceptions  = %w(a an and in the of)

		new_array = array.collect do |word|
			array[0] = word.capitalize

			count += 1

			if exceptions.include?(word) && count > 1
				word.downcase
			else
				word.capitalize
			end 
		end

		@title = new_array.join(" ")

	end 

end 