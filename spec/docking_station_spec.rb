require_relative '../lib/docking_station'
require_relative '../lib/bike'
# require_relative '../lib/bike_container'


describe DockingStation do
	
	let(:bike) {Bike.new}
	let(:station) {DockingStation.new(:capacity => 20)}

	it "should accept a bike" do
	station = double :station
	bike = double :bike
	expectio

	# def fill_station(station)
	# 	20.times {station.dock(Bike.new)}
	# end

	it "should accept a bike" do
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it "should be able to release a bike" do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)
	end

	it "should know when its full" do
		expect(station).not_to be_full
		# fill_station(station)
		20.times {station.dock(Bike.new)}
		expect(station).to be_full
	end

	it "should not accept a bike if full" do
		# fill_station(station)
		20.times {station.dock(Bike.new)}
		expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
	end

	it "should provide a list of bikes available" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break
		station.dock(working_bike) 
		station.dock(broken_bike)
		expect(station.available_bikes).to eq([working_bike])	
	end


end