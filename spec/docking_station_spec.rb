require 'docking_station'
require 'bike_holder'

include BikeHolder

describe 'Docking Station' do 

	let(:docking_station) { DockingStation.new }
	let(:bike)						{ Bike.new }

	it 'should begin as an empty docking statoin' do
		expect(docking_station.bike_count).to eq 0
	end

	it 'should not accept a bike if it is full' do
		20.times {docking_station.dock(bike)}
		expect{docking_station.dock(bike)}.to raise_error(RuntimeError)
	end
end