require_relative '../lib/bike_container'
# require_relative '../lib/bike'

class DockingStation

def initialize
	@bikes = []
	@capacity = 20
end

def bike_count	
	@bikes.count
end

def dock(bike)
	raise "station is full" if is_full?
	@bikes << bike
end

def release_bike(bike)
	@bikes.delete(bike)
end

def is_full?
@bikes.count == @capacity
end

end

