require_relative '../lib/bike_container2'


class ContainerHolder; include BikeContainer; end

# describe "BikeContainer", :shared => true do 
shared_examples BikeContainer do

# let (:bike) {Bike.new}
let (:holder) {ContainerHolder.new}
let (:bike) {double :bike}

def fill_holder
	20.times {holder.dock(bike)}
end

it 'should accept a bike' do
	# bike = double :bike
	expect(holder.bike_count).to eq(0)
	holder.dock(bike)
	expect(holder.bike_count).to eq(1)
end

it 'should be able to release a bike' do
	holder.dock(bike)
	holder.release_bike(bike)
	expect(holder.bike_count).to eq(0)
end

it 'should know when its full' do
	fill_holder
	expect(holder.is_full?).to be_true
end

it 'should not accept a bike if full' do
	fill_holder
	expect{holder.dock(bike)}.to raise_error
end

it 'should provide a list of available bikes' do
	working_bike = double :bike,broken?: false
	broken_bike = double :bike,broken?: true
	holder.dock(working_bike)
	holder.dock(broken_bike)
	expect(holder.available_bikes.count).to eq(1)
end



end

