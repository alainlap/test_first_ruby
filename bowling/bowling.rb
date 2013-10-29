class Game
	
	def score frames
		total = 0
		frames.each_with_index do |frame, index|
			
			if frame == 10
				if index < 10
					total += (frame + frames[index+1] + frames[index+2])
				end
			else
				total += frame
			end
		end
		total
	end
end