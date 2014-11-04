module BikeContainer
	
	DEFAULT_CAPACITY = 10

	def bikes
		@bikes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def bike_count
		bikes.count
	end

	def full?
		bike_count == capacity
	end

	def empty?
		bike_count == 0
	end

	def dock(bike)
		raise 'Station is full' if full?
		bikes << bike
	end

	def release(bike)
		raise 'There are no bikes' if empty?
		bikes.delete(bike)
	end

	def available_bikes
		@bikes.reject {|bike| bike.broken?}
	end

	def broken_bikes
		@bikes.select {|bike| bike.broken?}
	end

	def release_broken
		@bikes.delete(broken_bikes.pop)
	end

	def release_to(holder, bike)
		# bikes << holder.release(bike)
		holder.dock(bike)
		self.release(bike)
	end

end