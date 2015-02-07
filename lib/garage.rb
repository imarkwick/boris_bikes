require_relative 'bike_holder'

class Garage

	include BikeHolder


	DEFAULT_CAPACITY = 40

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

end