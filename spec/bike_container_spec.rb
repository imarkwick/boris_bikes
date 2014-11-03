require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

	let(:bike) { Bike.new }
	let(:holder) { ContainerHolder.new }

	it 'should accept a bike' do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it 'should release a bike' do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bike_count).to eq(0)
	end

	it 'should know when it is full' do
		10.times {holder.dock(bike)}
		expect(holder).to be_full
	end

	it 'should know when it is empty' do
		expect(holder.bike_count).to eq(0)
	end

	it 'should not accept a bike if it is full' do
		10.times {holder.dock(bike)}
		expect {holder.dock(bike)}.to raise_error(RuntimeError)
	end

	it 'should not release a bike if it is empty' do
	 	expect(holder.bike_count).to eq(0)
	 	expect{holder.release(bike)}.to raise_error(RuntimeError)
	 end

	# it 'should only release an available bike' do
	# 	working_bike, broken_bike = Bike.new, Bike.new
	# 	broken_bike.break!
	# 	holder.dock(working_bike)
	# 	holder.dock(broken_bike)
	# 	holder.release(working_bike)
	# 	holder.release(broken_bike)
	# 	expect(holder.bike_count).to eq(1)
	# end

end

