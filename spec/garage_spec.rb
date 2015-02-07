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

	it 'should be able to fix a broken bike' do
		bike.break!
		garage.dock(bike)
		bike.fix!
		expect(bike).not_to be_broken
	end

end