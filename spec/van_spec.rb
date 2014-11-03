require 'van'
require 'bike_container'
require 'bikes'

describe Van do
	
	let(:broken_bike) {double :bike, broken?: true}
	#let(:bike) {double :bike, fix!: :true,}
	bike = Bike.new
	let(:station) {DockingStation.new}
	let(:van) {Van.new}
	let(:garage) {double :garage }

	# def initialize
	# 	expect(station)
	# end

	it "has a default capacity of" do
		expect(van.capacity).to eq 10
	end

	it "the docking station has unavailable bikes" do
		bike.break!
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it "receives unavailable/broken bikes from station" do
		bike.break!
		van.dock(bike)
		expect(bike).to be_broken
		expect{van.dock(bike)}.to change{van.bike_count}.by 1
	end

	# it "should not receive available bikes from station" do
		
	# end

	# it "receives broken/unavailable bikes from the docking station" do
	# 	van.dock

	# it "receives broken bikes from docking station" do
	# 	station.dock(broken_bike)
	# 	station.release(broken_bike)
	# 	van.dock(broken_bike)
	# 	expect(van.bike_count).to eq(1)
	# end

	# it "releases broken bikes at the garage" do
	# 	expect(van.bike_count).to eq(0)
	# 	station.release(broken_bike)
	# 	van.dock(broken_bike)
	# 	expect(van.bike_count).to eq(1)
	# end

	# it "receives fixed bike at the garage" do
	# 	bike.break!
	# 	expect(bike).to be_broken
	# 	bike.fix!
	# end

	# it "returns fixed bike to the docking station" do
	# 	van.dock(bike)
	# 	expect(van.bike_count).to eq(1)
	# 	van.release(bike)
	# 	station.dock(bike)
	# end

end

# To have a capacity of bikes it can hold

# Receive broken bikes from dock

# Release broken bikes at garage

# Receive fixed bikes at garage

# Release fixed bikes at dock
