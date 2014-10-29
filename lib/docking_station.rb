class DockingStation

def initialize
	@bikes = []
end

def bike_count
	@bikes.count
end

def dock(bike)
	@bikes << bike
end

def full?
	if bike_count == 20
		return true
	elsif bike_count < 20
		return false
	end
end

end