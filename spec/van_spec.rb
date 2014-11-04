require 'van'
require 'bike_container'
require 'bikes'

describe Van do
	
	# let(:broken_bike) {double :bike, broken?: true}
	# let(:bike) {double :bike, broken?: :false}
	let(:bike) {Bike.new}
	let(:station) {DockingStation.new}
	let(:van) {Van.new}
	let(:garage) {double :garage }

	it "has a default capacity of" do
		expect(van.capacity).to eq 10
	end

	it "should receive broken bikes from the station" do
		bike.break!
		station.dock(bike)
		expect{station.release_to(holder, broken_bike)}.to change{holder.bike_count}.by 1
	end

	# it should receive unavailable/broken bikes from station

	# it should not receive available bikes from station

	# it should releases broken bikes at the garage

	# it should receive fixed bikes at the garage

	# it should return fixed bikes 

end
