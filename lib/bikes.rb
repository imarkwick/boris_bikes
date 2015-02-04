class Bike

	def initialize
		# @broken = false
		fix!
	end

	def break!
		@broken = true
	end

	def broken?
		@broken
	end

	def fix!
		@broken = false
		self
	end

end