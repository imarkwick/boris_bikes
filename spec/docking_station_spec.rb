require 'docking_station'

describe 'Docking Station' do 

	let(:docking_station) { DockingStation.new }
	let(:bike)						{ double :bike }

	it 'should begin as an empty docking statoin' do
		expect(docking_station.bike_count).to eq 0
	end

	it 'can accept a bike' do
		docking_station.dock(bike)
		expect(docking_station.bike_count).to eq 1
	end

	it 'can release a bike' do
		docking_station.dock(bike)
		docking_station.release(bike)
		expect(docking_station.bike_count).to eq 0
	end
end