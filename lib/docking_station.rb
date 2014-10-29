class DockingStation

	DEFAULT_CAPACITY = 20

def initialize(options = {})
	@capacity = options.fetch(:capacity, DEFAULT_CAPACITY) #common pattern for passing optional arguments into Ruby
	@bikes = []
end

def bike_count
	@bikes.count
end

def dock(bike)
	raise 'Station is full' if full?
	@bikes << bike
end

def full?
	bike_count == @capacity
end

def release(bike)
	@bikes.delete(bike)
end

end