require_relative 'bike_holder'

class User

	include BikeHolder

	DEFAULT_CAPACITY = 1

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end

	def dock(bike)
		raise 'Please return your bike before renting another' if full?
		super
	end

end
