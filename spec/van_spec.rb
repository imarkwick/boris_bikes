require 'van'
require 'bike_container'
require 'bikes'

describe Van do
	
	let(:bike) {Bike.new}
	let(:broken_bike) {Bike.new}
	let(:station) {DockingStation.new}
	let(:van) {Van.new}
	let(:garage) {Garage.new}

	it "has a default capacity of" do
		expect(van.capacity).to eq 10
	end

	it "should receive broken bikes from the station" do
		broken_bike.break!
		station.dock(bike)
		station.dock(broken_bike)
		expect{station.release_to(van, broken_bike)}.to change{station.bike_count}.to eq 1
		expect(van.broken_bikes.count).to eq 1
	end

	it "should receive fixed bikes at the garage" do
		garage.dock(bike)
		garage.release_to(van, bike)
		expect(van.available_bikes.count).to eq 1
	end
end
