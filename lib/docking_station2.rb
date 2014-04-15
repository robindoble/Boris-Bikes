require_relative '../lib/bike_container2'
# require_relative '../lib/bike'

class DockingStation

include BikeContainer

def initialize (options={})
	@bikes = []
	@capacity = options.fetch(:capacity, 10)
end

end

