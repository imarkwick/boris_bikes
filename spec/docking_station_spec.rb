require 'docking_station'
require 'bike_holder'

include BikeHolder

describe 'Docking Station' do 

	let(:docking_station) { DockingStation.new }

	it 'should begin as an empty docking statoin' do
		expect(docking_station.bike_count).to eq 0
	end
end