
def echo string
	string
end

def shout string
	string.upcase
end

def repeat string, no_times=2
	output = string
	(no_times-1).times do 
		output += " "
		output += string
	end
	output
end

def start_of_word word, no_letters
	word[0..no_letters-1]
end

def first_word phrase
	split = phrase.split(" ")
	split[0]
end

def titleize title
	split = title.split(" ")
	string = ""
	
	split.each_with_index do |word, index|

		if index > 0
			string += " "
		end

		if ((word == "and") || (word == "over") || (word == "the")) && (index != 0)
			temp = word
		else
			temp = word[0].upcase + word[1..word.length-1]
		end
		string += temp
	end
	string
end