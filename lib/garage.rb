require './lib/bike_container'

class Garage

	include BikeContainer
	
	def capacity
		@capacity = 40
	end

end