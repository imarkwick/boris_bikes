# require 'bike_container'
require 'garage'
require 'bikes'
require 'van'

describe Garage do

	let(:garage) { Garage.new }
	let(:van) { Van.new }
	let(:broken_bike) { Bike.new }
	let(:bike) { Bike.new }

	it "should accept a broken bike from the van" do
		broken_bike.break!
		van.dock(bike)
		van.dock(broken_bike)
		garage.dock_broken(van)
		expect(garage.broken_bikes.count).to eq 1
	end

	it "should release working bikes to the van" do
		garage.dock(bike)
		garage.release_to(van, bike)
		expect(garage.available_bikes.count).to eq 0
	end	
end