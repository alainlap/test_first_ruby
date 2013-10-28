
class Array
	def sum 
		s = 0
		self.each do |i|
			s += i
		end
		s
	end

	def square
		sq = []
		self.each do |i|
			sq << i**2
		end
		sq
	end

	def square!
		self.map! do |i|
			i**2
		end
		# WTF?
	end
end