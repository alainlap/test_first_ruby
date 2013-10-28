class RPNCalculator

	def initialize
		@operation = ""
		@value = 0
		@entries = []
	end

	def push x
		@entries.unshift(x)
	end

	def plus
		raise "calculator is empty" if @entries.length	 < 2
		@value = @entries[0] + @entries[1]
		@entries.delete_at(0)
		@entries.delete_at(0)
		@entries.unshift(@value)
		
	end

	def minus
		raise "calculator is empty" if @entries.length	 < 2
		@value = @entries[1] - @entries[0]
		@entries.delete_at(0)
		@entries.delete_at(0)
		@entries.unshift(@value)
	end

	def divide
		raise "calculator is empty" if @entries.length	 < 2
		@value = @entries[1]/@entries[0].to_f
		@entries.delete_at(0)
		@entries.delete_at(0)
		@entries.unshift(@value)
	end

	def times
		raise "calculator is empty" if @entries.length	 < 2
		@value = @entries[0]*@entries[1].to_f
		@entries.delete_at(0)
		@entries.delete_at(0)
		@entries.unshift(@value)
	end

	def value
		@entries[0].to_f
	end

	def tokens sequence
		array = []
		split = sequence.split(" ")
		split.each do |i|
			
			if i.to_f != 0
				array << i.to_i
			else
				array << i.to_sym
			end
		end
		array
	end

	def evaluate sequence
		array = tokens(sequence)
		
		array.each do |i|
			
			if i.is_a? Integer
				push(i)
			elsif i == :+
				plus
			elsif i == :-
				minus
			elsif i == :*
				times
			elsif i == :/
				divide
			end
		end
		value
	end
end













