require 'bikes'

describe 'Bike' do 

	let(:bike) {Bike.new}

	it 'should not be broken when it is new' do
		expect(bike.broken?).to be false
	end

	it 'should be able to break' do
		bike.break!
		expect(bike.broken?).to be true
	end
	
end

