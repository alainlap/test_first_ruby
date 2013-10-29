def translate string
	words = string.split(" ")
	translated = ""
	vowels = ["a", "i", "e", "o", "u", "y"]
	
	words.each_with_index do |word, index|
		if index > 0
			translated += " "
		end

		# words starting with vowel
		if vowels.include?(word[0])
			translated += (word + "ay")
		# words starting with 'qu'
		elsif word[0..1] == "qu"
			translated += (word[2..-1] + "qu" + "ay")
		# words starting with consonant then 'qu'
		elsif word[1..2] == "qu"
			translated += (word[3..-1] + word[0..2] + "ay")
		# words starting with 3 consonants
		elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
			translated += (word[3..-1] + word[0..2] + "ay")
		# word starting with 2 consonants
		elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
			translated += (word[2..-1] + word[0..1] + "ay")
		# word starting with 1 consonant
		elsif !vowels.include?(word[0])
			translated += (word[1..-1] + word[0] + "ay") 
		end
	end
	translated
end

translate("apple")