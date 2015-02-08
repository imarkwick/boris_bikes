require_relative 'bike_holder'

class Garage

	include BikeHolder

	attr_accessor :bikes

	DEFAULT_CAPACITY = 40

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end

	def release_fixed(bike)
		raise 'This bike is not yet fixed' if bike.broken?
		bikes.delete(bike)
	end

	def dock(bike)
		raise 'The garage is full' if full?
		super
	end

end