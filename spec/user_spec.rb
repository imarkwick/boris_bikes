require 'user'

describe 'User' do 

	let(:user) 				{ User.new }
	let(:bike) 				{ double :bike }
	let(:dodgy_bike)	{ double :bike, break!: bike, broken?: true }

	it 'should not have a bike to begin with' do
		expect(user.bike_count).to eq 0
	end

	it 'should be able to take a bike from the docking station' do
		user.dock(bike)
		expect(user.bike_count).to eq 1
	end

	it 'should be able to return a bike to the docking station' do
		user.dock(bike)
		user.release(bike)
		expect(user.bike_count).to eq 0
	end

	it 'should be able to break a bike' do
		user.dock(dodgy_bike)
		dodgy_bike.break!
		expect(dodgy_bike.broken?).to be true
	end

end