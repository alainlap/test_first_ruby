def translate word

	vowels = ["a", "i", "e", "o", "u", "y"]

	if vowels.include?(word[0])
		temp = word + "ay"
	elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
		temp = word[2..word.length-1] + word[0..1] + "ay" 
	elsif !vowels.include?(word[0]) && vowels.include?(word[1])
		temp = word[1..word.length-1] + word[0] + "ay" 
	end
end