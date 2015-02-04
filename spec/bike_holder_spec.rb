require 'bike_holder'
require 'bikes'

class Holder; include BikeHolder end

describe 'BikeHolder' do 

	let(:bike_holder) 		{ Holder.new }
	let(:user)						{ double :user }
	let(:docking_station) { double :DockingStation }
	let(:bike)						{ double :Bike, broken?: false }
	let(:broken_bike)			{ double :Bike, broken?: true }

	it 'should begin without any bikes' do
		expect(bike_holder.bike_count).to eq 0
	end

	it 'can accept a bike' do
		bike_holder.dock(bike)
		expect(bike_holder.bike_count).to eq 1
	end

	it 'can release a bike' do
		bike_holder.dock(bike)
		bike_holder.release(bike)
		expect(bike_holder.bike_count).to eq 0
	end

	it 'can dock and release a bike from two holders' do
		bike_holder.dock(bike)
		expect(bike_holder.bike_count).to eq 1
		bike_holder.release_to(user, bike)
		expect(user.bike_count).to eq 1
		expect(bike_holder.bike_count).to eq 0
	end

	it 'should know when it is full' do
		expect(bike_holder).not_to be_full
		10.times{ bike_holder.dock(bike) }
		expect(bike_holder.full?).to be true
	end

	it 'should know how many broken bikes are at the docking station' do
		docking_station.dock(bike)
		docking_station.dock(broken_bike)
		expect(docking_station.broken_bike_count).to eq 1
	end

end


