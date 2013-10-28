class Changer
	def self.make_change amount
		change = []
		quarters = amount/25
		dimes = (amount%25)/10
		nickels = (amount%25%10)/5
		pennies = (amount%25%10%5)

		quarters.times do
			change << 25
		end
		dimes.times do
			change << 10
		end
		nickels.times do
			change << 5
		end
		pennies.times do
			change << 1
		end
		change
	end
end