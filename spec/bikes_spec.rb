require 'bikes'

describe Bike do

	let(:bike) {Bike.new} # :broken_bike is name of variable

	it 'is not broken when created' do
		:bike
		expect(bike).not_to be_broken #same as below
		#expect(bike.broken?).to be false
	end

	it 'can break' do
		:bike
		bike.break!
		expect(bike).to be_broken
	end 

	it 'can be fixed' do
		:bike
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken
	end

end

# it can break
# it can be fixed 


