RANGE_METHODS:

	a = Range.new(3,9) # Output: 3..9

	a.to_a # Output: [3, 4, 5, 6, 7, 8, 9]

	a.begin # Output: 3

	a.end # Output: 9

	In this method, if the third parameter is false or excluded, the range includes end-object. Otherwise, it will omit.

	Range.new(2, 8, false) # 2..8,  Output: [2, 3, 4, 5, 6, 7, 8]
	Range.new(2, 8, true)  # 2...8, Output: [2, 3, 4, 5, 6, 7]

	new_val = Range.new(2, 8, false)
	new_val.member?(7) # Output: true
	new_val.member?(9) # Output: false

	step_method:
		step method is used with a Range to iterate over a sequence with a specified step interval.

		Syntax: range.step(n) { |value| block }

		1. Using step with a range:

			(1..10).step(2).each {|num| puts num }
			# Output: 1
							# 3
							# 5
							# 7
							# 9

		2. Using step with a floating-point step:

			(1.0..5.0).step(1.5) { |num| puts num }
			# Output: 1.0
							# 2.5
							# 4.0

		3. Using step in a for loop:

			for i in (0..10).step(3)
			  puts i
			end

			# Output: 0
							# 3
							# 6
							# 9


INITIALIZE_METHOD_IN_RUBY:

	Without Initialize variable

	class Geeks 

	  # Method with initialize keyword 
	  def initialize(name) 
	  end
	end

	# Output-> :initialize

	With Initialize Variable

	class GeeksWithVariable
		def initialize(a, b)
			@x = a
			@y = b
		end
	end

	GeeksWithVariable.new("Surenth", 31)
	# Output: #<GeeksWithVariable:0x0000000124bd4820 @x="Surenth", @y=31>


METHOD_OVERRIDE:

	SubClass method overrides the method of the superclass.

	class Box
		def initialize(width, height)
			@w = width
			@h = height
		end

		def get_area
			@w * @h
		end
	end


	class BigBox < Box
		def get_area
			@area = @w * @h
			puts "BigBox area is #{@area}"
		end
	end

	obj = BigBox.new(10,20) # Output: #<BigBox:0x0000000122710d18 @h=20, @w=10>
	obj.get_area            # Output: BigBox area is 200


	We are using super to call the superclass method
	class Box
		def initialize(width, height)
			@w = width
			@h = height
		end

		def get_area
			@w * @h
			puts "Super class called"
		end
	end


	class BigBox < Box
		def get_area
			@area = @w * @h
			super
			puts "BigBox area is #{@area}"
		end
	end


	obj = BigBox.new(10,20) # Output: #<BigBox:0x0000000122710d18 @h=20, @w=10>
	
	obj.get_area
	# Output: 
					# Super class called
					# BigBox area is 200



