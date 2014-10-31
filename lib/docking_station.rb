require_relative 'bike_container'

class DockingStation

	include BikeContainer

	attr_accessor :bikes

	DEFAULT_CAPACITY = 20

	def initialize(options = {}) #allows you to get a default capacity so if nothing is passed in
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY) #common pattern for passing optional arguments into Ruby
		@bikes = []
	end

end