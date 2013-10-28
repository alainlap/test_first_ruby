def reverser
	words = yield.split(" ")
	output = ""
	words.each_with_index do |word, index|
		if index > 0
			output += " "
		end
		output += word.reverse.to_s
	end
	output
end

def adder x=1
	yield + x
end

def repeater x=1
	x.times do 
		yield
	end
end