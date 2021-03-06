module BikeHolder

	DEFAULT_CAPACITY = 10

	def bikes
		@bikes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def bike_count
		bikes.count
	end

	def dock(bike)	
		bikes << bike
	end

	def release(bike)
		bikes.delete(bike)
	end

	def release_to(holder, bike)
		raise 'This bike is broken' if bike.broken? && holder.is_a?(User)
		holder.dock(bike)
		self.release(bike)
	end

	def full?
		bike_count == capacity
	end

	def broken_bike_count
		bikes.select { |bike| bike.broken? }.count
	end

	def working_bike_count
		bikes.select { |bike| !bike.broken? }.count
	end
end