require 'bikes'
require 'docking_station'

describe DockingStation do

	it "should accept a bike" do
		bike = Bike.new
		station = DockingStation.new
		expect(station.bike_count).to eq(0)
		station.dock(bike)
	end

	it "should know when station is full" do
		station = DockingStation.new
		bike = Bike.new
		expect(station.full?).to be false
		20.times {station.dock(bike)}
		expect(station.full?).to be true
	end

	#it "should not accept bike if full" do
	#	station = DockingStation.new
	#	bike = Bike.new
	#	expect
	
end

# accepting a bike - (1) needs to know if station is full - (2) needs capacity
	# It should know when it's full
	# It should accept it 
	# It sHould not accept if full

# releasing a bike - (2) if it's fixed - (2) if it's broken to the van