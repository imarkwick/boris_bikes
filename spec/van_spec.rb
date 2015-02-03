require 'van'
require 'bike_holder'

include BikeHolder

describe 'Van' do

	let(:van) 						{ Van.new }
	let(:bike) 						{ double :bike, broken?: false }
	let(:broken_bike)			{ double :bike, broken?: true }

	it 'should be able to collect a bike from the docking station' do
		van.dock(bike)
		expect(van.bike_count).to eq 1
	end

	it 'should be able to collect broken bikes from docking station' do
		van.dock(broken_bike)
		expect(van.bike_count).to eq 1
	end

end