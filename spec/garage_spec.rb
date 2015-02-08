require 'garage'
require 'bike_holder'

describe 'Garage' do
	
	let(:garage) 			{ Garage.new }
	let(:bike)				{ Bike.new }
	let(:broken_bike) { double :bike, broken?: true }

	it 'should accept a broken bike from the van' do
		garage.dock(broken_bike)
		expect(garage.bike_count).to eq 1
	end

	it 'should know when it is full' do
		40.times { garage.dock(broken_bike) }
		expect(garage.full?).to be true
	end

	it 'should not accept bikes when it is full' do
		40.times { garage.dock(broken_bike) }
		expect{ garage.dock(bike) }.to raise_error(RuntimeError)
	end

	it 'should be able to fix a broken bike' do
		bike.break!
		garage.dock(bike)
		bike.fix!
		expect(bike).not_to be_broken
	end

	it 'should only release a fixed bike to the van' do
		bike.break!
		garage.dock(bike)
		expect{ garage.release_fixed(bike) }.to raise_error(RuntimeError)
	end

	it 'should release bikes that are fixed to the van' do
		bike.break!
		garage.dock(bike)
		expect(garage.bike_count).to eq 1
		bike.fix!
		garage.release_fixed(bike)
		expect(garage.bike_count).to eq 0
	end

end

