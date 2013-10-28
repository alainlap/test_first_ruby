class Temperature

	def initialize hash=nil
		@f = hash[:f]
		@c = hash[:c]
	end

	def to_fahrenheit
		if @f == nil
			@f = @c * (9.0/5) + 32
			@f.round.to_i
		else
			@f
		end
	end

	def to_celsius
		if @c == nil
			@c = (@f - 32) / (9.0/5.0)
			@c.round.to_i
		else
			@c
		end
	end
	
	def self.in_celsius temp
		Temperature.new({c: temp})
	end

	def self.in_fahrenheit temp
		Temperature.new({f: temp})
	end

end

class Celsius < Temperature
	def initialize temp
		@c = temp
	end
end

class Fahrenheit < Temperature
	def initialize temp
		@f = temp
	end
end