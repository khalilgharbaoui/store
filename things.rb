require './store.rb'
require './carClass.rb'
require './planeClass.rb'
#Things...
car = Car.new
car.name = 'Mercedes'
car.color = :red # Overwrites line 17
car.speed = 320

plane = Plane.new
plane.name = 'Boing'
plane.color = :blue
plane.speed = 1799


vehicles = [car, plane]

vehicles.each do |vehicle|
  vehicle.description
  vehicle.move
end
