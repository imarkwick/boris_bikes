module BikeHolder

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

end