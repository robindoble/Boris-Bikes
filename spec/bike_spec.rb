require_relative "../lib/bike"

describe Bike do 
	
let(:bike) {Bike.new}

it "knows that a new bike is not broken" do
# bike = Bike.new
expect(bike).not_to be_broken
end

it "knows that a broken bike is broken" do
# bike = Bike.new
bike.break
expect(bike).to be_broken
end

it "knows how to fix a bike as well" do
# bike = Bike.new
bike.break
bike.fix
expect(bike).not_to be_broken
end

end