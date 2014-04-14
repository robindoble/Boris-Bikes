require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do 

let (:bike) {Bike.new}
let (:holder) {ContainerHolder.new}

it 

