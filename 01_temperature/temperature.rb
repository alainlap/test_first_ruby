def ftoc f
	c = (f - 32) / (9.0/5.0)
	c.round.to_i
end


def ctof c
	f = c * (9.0/5) + 32
	f.round.to_i
end