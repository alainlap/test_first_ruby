class Game
	SCORE = 0
	FRAME = 1

	def score(input)
		p frames = map_frames(input)
		total = 0
		frames.each_with_index do |frame, index|

			if frame[FRAME] <= 9 # add up regular roles
				total += frame[SCORE]
			end

			
			if frame[SCORE] == 10 && frame[FRAME] <= 9 # bonus for strike
				total += frames[index+1][SCORE] + frames[index+2][SCORE]
			elsif ((frame[SCORE] + frames[index-1][SCORE]) == 10) && (frame[FRAME] == frames[index-1][FRAME]) # bonus for spares
				total += frames[index+1][SCORE]
			end
		end
		total
	end

	def map_frames(input)
		frame = 0
		frames = []
		input.each_with_index do |score, index|
			frames << [score, frame]
			if (index > 0) && (frames[index][FRAME] == frames[index-1][FRAME])
				frame += 1
			elsif score == 10
				 frame += 1
			end
		end
		frames
	end
end