require './lib/bike_container'
require './lib/docking_station'

describe DockingStation do

	let(:station) {DockingStation.new(:capacity => 20)}
	let(:broken_bike) {double :bike, broken?: true}
	let(:bike) {double :bike, broken?: false}

	it "should allow setting default capacity on initialising" do
		expect(station.capacity).to eq(20)
	end

	it 'should release a bike that is working' do
		station.dock(bike)
		expect{station.release(bike)}.to change{station.bike_count}.by -1
	end
end
