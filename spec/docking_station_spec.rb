require 'bikes'
require 'docking_station'

describe DockingStation do

	let(:bike) {double :bike} # should not have this instance defined in the test, use a double!
	let(:station) {DockingStation.new(:capacity => 20)}

	def fill_station(station)
		20.times {station.dock(bike)}
	end

	it "should accept a bike" do
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it "should know when station is full" do
		expect(station.full?).to be false
		fill_station(station)
		expect(station.full?).to be true
	end

	it "should not accept bike if full" do
		fill_station(station)
		expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
	end

	it "should release a bike" do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)
	end

	it "should provide a list of available bikes" do
		# bike_a, bike_b = Bike.new, Bike.new
		# bike_b.break!
		working_bike = double :bike, {:broken? => false}
		broken_bike = double :bike, {:broken? => true}
		station.dock(working_bike)
		station.dock(broken_bike)
		expect(station.available_bikes).to eq([working_bike])
	end	
	
end

# accepting a bike - (1) needs to know if station is full - (2) needs capacity
	# It should know when it's full
	# It should accept it 
	# It sHould not accept if full

# releasing a bike - (2) if it's fixed - (2) if it's broken to the van