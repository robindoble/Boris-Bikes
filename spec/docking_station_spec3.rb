require_relative '../lib/docking_station2'
require_relative '../spec/bike_container_spec'


describe DockingStation do
# it_should_behave_like "BikeContainer"
	it_should_behave_like BikeContainer
# station = DockingStation.new

	let (:station) {DockingStation.new(capacity: 123)}


	it "should allow setting default capacity on initialising" do
		expect(station.capacity).to eq(123)
	end


end