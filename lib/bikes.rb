class Bike

	def initialize
		fix!
	end 

	def broken?
		@broken #instance
	end

	def break! # is the ! doing anything?
		@broken = true
	end

	def fix!
		@broken = false
		self # check what I am
	end

end
