module BikeHolder

	DEFAULT_CAPACITY = 10

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

	def bikes
		@bikes ||= []
	end

	def bike_count
		bikes.count
	end

	def dock(bike)
		bikes << @bike
	end

	def release(bike)
		bikes.delete(@bike)
	end

	def release_to(holder, bike)
		holder.dock(bike)
		self.release(bike)
	end

	def full?
		bike_count == @capacity
	end

end