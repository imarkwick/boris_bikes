class DockingStation

	DEFAULT_CAPACITY = 20

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

	def dock(bike)
		raise 'There is no space for bikes at this docking station' if full?
		super
	end

end