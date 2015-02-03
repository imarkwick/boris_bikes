require 'bike_holder'

class Holder; include BikeHolder end

describe 'BikeHolder' do 

	let(:bike_holder) 		{ Holder.new }
	let(:docking_station) { DockingStation.new }
	let(:bike)						{ Bike.new }
	let(:user)						{ User.new }

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
		expect(docking_station).not_to be_full
		20.times { docking_station.dock(bike) }
		expect(docking_station.full?).to be true
	end

	it 'should know when a user has a bike' do
		user.dock(bike)
		expect(user.full?).to be true
	end
		
end