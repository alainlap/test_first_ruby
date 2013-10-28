class Timer


	def seconds= seconds=0
		@seconds = seconds
	end
	
	def seconds seconds=0
		@seconds = seconds
	end	

	def time_string
		"#{padded(@seconds/3600)}:#{padded((@seconds/60)%60)}:#{padded(@seconds%60)}"
	end

	def padded number
		if number < 10
			"0" + number.to_s
		else
			number.to_s
		end

	end
end