 require 'bikes'

describe Bike do

	let(:bike) {Bike.new}

	it 'is not broken when created' do
		:bike
		expect(bike).not_to be_broken
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

