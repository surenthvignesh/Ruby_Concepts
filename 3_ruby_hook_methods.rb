There are several Ruby Hook Methods, but majorly, the followings have major roles to play: 

	1. Included
	2. Prepended
	3. Extended
	4. Inherited
	5. method_missing


Modules in Ruby

	Modules are simply sets of code that could be written once and be used at multiple places. Usually, hook methods are used to access them and make changes in them.

	1. Included

			Used to include a method or attribute or module to another module. 
			The method makes the underlined module available to the instances of the class.

			module Greetings
				def self.included(person_to_be_greeted)
					puts "The #{person_to_be_greeted} is welcomed with an open heart !"
				end
			end

			class Person
				include Greetings
			end

			# Output: The Person is welcomed with an open heart !

	2. Prepended

			This uses the concept of overriding. The modules can be overridden using methods defined in the target class.

			module Ruby
				def self.prepended(target)
					puts "#{self} has been prepended to #{target}"
				end

				def type
					"The type belongs to Ruby"
				end
			end

			class Coding
				prepend Ruby
			end

			# Output: Ruby has been prepended to Coding

			Coding.new.type # Output: "The type belongs to Ruby"

	3. Extended


			module RubyExtend
				def self.extended(target)
					puts "#{self} was extended by #{target}"
				end

				def type_1
					"The Type is RubyExtend."
				end
			end

			class Codings
				extend RubyExtend
			end
			# Output: RubyExtend was extended by Codings

			Codings.type_1 # Output: "The Type is RubyExtend."

	4. Inherited

			class Vehicle
 
			  def self.inherited(car_type)
			    puts "#{car_type} is a kind of Vehicle"
			  end
			 
			end
			 
			# Target class
			class Hyundai < Vehicle #Inhereting the Vehicle class
			end

			# Output: Hyundai is a kind of Vehicle

	5. method_missing

		This comes to action when one tries to call a method on an object that does not exist. 

		class Ruby
			def method_missing(input, *args)
				"#{input} not defined on #{self}"
			end

			def type
				"The type is Ruby"
			end
		end

		var = Ruby.new

		var.type # Output: The type is Ruby

		var.name # Output: "name not defined on #<Ruby:0x0000000121cb2bc8>"




