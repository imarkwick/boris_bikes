require 'user'
require 'bike_holder'

include BikeHolder

describe 'User' do 

	let(:user) 						{ User.new }
	let(:bike) 						{ double :bike, broken?: false }
	let(:bike2)						{ double :bike }
	let(:dodgy_bike)			{ double :bike, broken?: true }
	let(:docking_station) { double :docking_station }

	it 'should not have a bike to begin with' do
		expect(user.bike_count).to eq 0
	end

	it 'should be able to take a bike from the docking station' do
		user.dock(bike)
		expect(user.bike_count).to eq 1
	end

	it 'should be able to return a bike to the docking station' do
		user.release_to(docking_station, bike)
		expect(user.bike_count).to eq 0
		expect(docking_station.bike_count).to eq 1
	end

	it 'should only be able to take one bike at a time' do
		user.dock(bike)
		expect(user.bike_count).to eq 1
		expect{ user.dock(bike2) }.to raise_error(RuntimeError)
	end

	it 'should be able to break a bike' do
		user.dock(dodgy_bike)
		expect(dodgy_bike.broken?).to be true
	end

end