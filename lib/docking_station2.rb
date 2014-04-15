require_relative '../lib/bike_container2'
# require_relative '../lib/bike'

class DockingStation

include BikeContainer

def initialize (options={})
	# @bikes = []
	self.capacity = options.fetch(:capacity, capacity)
	
	# @capacity = options.fetch(:capacity, 10)
	# .capcity 
end

end

