require_relative 'bike_holder'

class DockingStation

	include BikeHolder

	attr_accessor :bikes

	DEFAULT_CAPACITY = 20

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end

	def dock(bike)
		raise 'There is no space for bikes at this docking station' if full?
		super
	end

	def release(bike)
		raise 'there are no bikes' if empty?
		super
	end

	def empty?
		bike_count == 0
	end

end