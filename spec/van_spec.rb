require 'van'
require 'bike_holder'

include BikeHolder

describe 'Van' do

	let(:van) 						{ Van.new }
	let(:bike) 						{ double :bike, broken?: false }
	let(:broken_bike)			{ double :bike, broken?: true }
	let(:garage)					{ double :garage }
	let(:docking_station) { double :DockingStation }
	let(:bike2)						{ Bike.new }

	it 'should be able to collect a bike from the docking station' do
		van.dock(bike)
		expect(van.bike_count).to eq 1
	end

	it 'should be able to collect broken bikes from docking station' do
		van.dock(broken_bike)
		expect(van.bike_count).to eq 1
	end

	it 'should know when it is full' do
		10.times { van.dock(broken_bike) }
		expect(van.full?).to be true
	end

	it 'should release broken bikes to the garage' do
		van.dock(broken_bike)
		van.dock(bike)
		van.release_to(garage, broken_bike)
		expect(van.working_bike_count).to eq 1
	end

	it 'should accept working bikes from the garade' do
		bike2.break!
		van.dock(bike2)
		van.release_to(garage, bike2)
		bike2.fix!
		van.dock(bike2)
		expect(van.working_bike_count).to eq 1
	end

	it 'should release fixed biked to the docking station' do
		van.dock(bike)
		van.release_to(docking_station, bike)
		expect(van.bike_count).to eq 0
	end

end









