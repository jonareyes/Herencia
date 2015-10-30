class Vehicle
	def initialize
		@color = "white"
		@age = age
	end

	attr_accessor :color
	attr_accessor :numbers_of_wheels
	attr_accessor :age

	def age!
	end

	def number_of_wheels
	end
end
# Morotized es herencia de vehiculo lo cual permite tomar los valores de esa intancia
class Motorized	< Vehicle
	def initialize
		@has_motor
		@tank_size 
		@number_of_gears 
	end
# Se declaran metodos para ser heredados en motorbike y car 
	def has_motor 	
	end 

	def tank_size	
	end

	def refuel	
	end

	def number_of_gear		
	end
end
# Se utilizan los metodos declarados para heredarlos en motorbike y car
class Motorbike < Motorized
	def initialize
		@has_motor  
		@tank_size = "20L"
		@number_of_gears 
	end
end

class Car < Motorized
	def initilize
		@has_motor
		@tank_size 
		@numbers_of_wheels 
	end
end

class Bicycle < Vehicle
	def initialize
		@numbers_of_wheels  
	end
end

class Skateboard < Vehicle
	def initialize
		@numbers_of_wheels 
	end
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.class} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\n\n"
end