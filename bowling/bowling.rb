class Game
	
	def score frames
		p expand_frames frames
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

	def expand_frames frames
		rebuild = []
		frames.each_with_index do |frame, index|
			
			if frame == 10 && index > 0 && index < 10
				rebuild << 0
			end
			rebuild << frame
		end
		rebuild
	end
end