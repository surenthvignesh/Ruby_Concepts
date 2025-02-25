Inheritance - Deriver_class_attributes:

		class Vehicle

			attr_accessor :vehicle_name 
			attr_accessor :color
			
			def initialize(name, color)
				@vehicle_name = name
				@color = color
			end

		end


		class Car < Vehicle

			attr_accessor :car_model

			def initialize(name, color, car_model)
				super(name, color)
				@car_model = car_model
			end
		end

		car = Car.new("Benz", "Silver", "S-Class")
		car.vehicle_name
		car.color
		car.car_model
		car.car_model = "G-Class"


Public_and_Private:

		class Vehicle
			def initialize(name, color, customer_name)
				@vehicle_name = name
				@color = color
				@customer_name = customer_name
			end

			def display
				greetings
				puts "Your car details are:"
				puts @vehicle_name
				puts @color
			end

			private
			def greetings
				puts "Hello user #{@customer_name}.."
			end
		end

		vehicle = Vehicle.new("Benz", "Red", "Surenth")
		vehicle.display 

			# Output: 
				# Hello user Surenth..
				# Your car details are:
				# Benz
				# Red

MIXINS:

		module Greeting
			def display
				puts "Hello User"
			end
		end

		class GreetUser
			include Greeting
			attr_accessor :name

			def initialize(name)
				@name = name
			end
		end

		user = GreetUser.new("Surenth")
		user.display
		user.name


EXTEND_MIXINS:

		module Greeting
			def display
				puts "Hello User"
			end
		end

		class GreetUser
			extend Greeting
			attr_accessor :name

			def initialize(name)
				@name = name
			end
		end

		GreetUser.display 							# Output: Hello User
		user = GreetUser.new("Surenth") # Output: #<GreetUser:0x000000013bf78168 @name="Surenth">
		user.name 											# Output: "Surenth"





