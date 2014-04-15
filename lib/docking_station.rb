require_relative '../lib/bike_container'
# require_relative '../lib/bike'

class DockingStation

# #access all methods in module BikeContainer
include BikeContainer

def initialize(options={})
	# self.capacity is calling the capacity=() method
	# note the equals sign in BikeContainer
	# second arg below is calling capacity in BikeContainer
	self.capacity = options.fetch(:capacity, capacity)	
end

station = DockingStation.new(:capacity => 20)
puts station.capacity
# station.bikes
puts station.bike_count
# 10.times {station.dock(Bike.new)}
# puts station.bike_count
# puts station.full?
# puts station.inspect
	

end



#REDUNDANT CODE HAVING CREATED A MODULE FOR COMMON CLASS METHODS  

# DEFAULT_CAPACITY=10

# def initialize(options={})
# 	@capacity = options.fetch(:capacity,DEFAULT_CAPACITY)
# 	@bikes = []
# end

# def bike_count
# 	@bikes.count
# end

# def dock(bike)
# #if capacity is reached, raise an exception
# raise "Station is full" if full?
# @bikes << bike
# end

# def release(bike)
# 	@bikes.delete(bike)
# end

# def full?
# 	bike_count==@capacity
# end

# def available_bikes
# 		@bikes.reject {|bike| bike.broken?}
# end
