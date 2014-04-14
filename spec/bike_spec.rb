require_relative "../lib/bike"

describe Bike do 
	
# it "knows that a new bike is not broken" do
# expect(Bike.new).to be_false
# end

it "knows that a new bike is not broken" do
bike = Bike.new
expect(bike).not_to be_broken
end

end