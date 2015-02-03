require 'user'

describe 'User' do 

	let(:user) { User.new }
	let(:bike) { double :bike }

	it 'should not have a bike to begin with' do
		expect(user.bike_count).to eq 0
	end

	it 'should be able to take a bike from the docking station' do
		user.dock(bike)
		expect(user.bike_count).to eq 1
	end

end