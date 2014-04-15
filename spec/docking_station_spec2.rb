require_relative '../lib/docking_station2'

describe DockingStation do
	
# station = DockingStation.new

	let (:station) {DockingStation.new}
	let (:bike) {double :bike}	

	def fill_station
		20.times {station.dock(bike)}
	end

	it "should accept a bike" do	
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it 'should be able to release a bike' do
		station.dock(bike)
		station.release_bike(bike)
		expect(station.bike_count).to eq(0)
	end

	it 'knows when its full' do
		expect(station.is_full?).to be_false
		fill_station
		expect(station.bike_count).to eq(20)
		expect(station.is_full?).to be_true
	end

	it 'should not accept a bike if full' do
		fill_station
		expect{station.dock(bike)}.to raise_error (RuntimeError)
		# expect(lambda {station.dock(bike)}).to raise_error (RuntimeError)
	end

end