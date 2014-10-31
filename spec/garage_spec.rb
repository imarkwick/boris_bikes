require 'bike_container'
require 'garage'

describe Garage do
	
let(:garage) {Garage.new}
let(:van) {double :van, dock: bike, release_to: bike }
let(:broken_bike) {double :bike, broken?: true}
let(:bike) {double :bike}
let(:bike) {Bike.new}

it "has a capacity" do
	expect(garage.capacity).to eq(40)
end

it "receives broken bikes" do

	# bike.break!
	# van.dock(bike)
	# van.release_to(garage, bike)
	# expect(garage.bike_count).to eq(1)
	#van.release_to(garage, bike)
	#expect(garage.bike_count)#.to eq(1)
	#garage.receive_broken_bikes(van)
end

# garage must receive broken bike

# garage must fix bike

# garage must release broken bike


end