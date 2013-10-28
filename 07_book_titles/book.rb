
class Book
	def title= input
		@title = input
	end

	def title

		conjunctions = ["and", "in", "the", "of", "a", "an"]

		split = @title.split(" ")
		output = ""
		split.each_with_index do |word, index|
			if index > 0
				output += " "
			end
			if conjunctions.include?(word) && index > 0
				output += word
			else
				output += word[0].upcase + word[1..-1]
			end
		end
		output

	end
end