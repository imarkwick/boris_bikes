require 'docking_station'
require 'bike_holder'

include BikeHolder

describe 'Docking Station' do 

	let(:docking_station) { DockingStation.new }
	let(:user)						{ User.new }
	let(:bike)						{ double :bike }
	let(:broken_bike)			{ double :bike, broken?: true }
	let(:van)							{ double :van }

	it 'should begin as an empty docking statoin' do
		expect(docking_station.bike_count).to eq 0
	end

	it 'should not accept a bike if it is full' do
		20.times {docking_station.dock(bike)}
		expect{docking_station.dock(bike)}.to raise_error(RuntimeError)
	end

	it 'should not release a bike if it is empty' do
		expect(docking_station.bike_count).to eq 0
		expect{ docking_station.release(bike) }.to raise_error(RuntimeError)
	end

	it 'should not release a broken bike to a user' do
		docking_station.dock(broken_bike)
		expect{ docking_station.release_to(user, broken_bike) }.to raise_error(RuntimeError)
	end

	it 'should release a broken bike to a van' do
		docking_station.dock(broken_bike)
		docking_station.release_to(van, broken_bike)
		expect(van.bike_count).to eq 1
	end

	# it 'should know how many broken bikes are at the docking station' do
	# 	docking_station.dock(bike)
	# 	docking_station.dock(broken_bike)
	# 	expect(docking_station.broken_bike_count).to eq 1
	# end
end