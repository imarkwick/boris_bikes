require 'bike_container'
require 'garage'
require 'bikes'

describe Garage do
	
	let(:garage) {Garage.new}
	let(:van) {double :van, dock: bike, release_to: bike, bike_count: (1) }
	# let(:broken_bike) {double :bike, broken?: true}
	# let(:bike) {double :bike}
	let(:bike) {Bike.new}

	it "has a capacity" do
		expect(garage.capacity).to eq(40)
	end

	# bike count initially 0
	# when receives bike, garage.bike_count increases by 1



# garage must fix bike

# garage must release broken bike


end