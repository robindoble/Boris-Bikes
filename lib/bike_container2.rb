module BikeContainer

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

def available_bikes
	@bikes.reject {|bike| bike.broken?(true)}
end

end