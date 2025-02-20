RUBY_METHODS:

	Ruby methods are blocks of reusable code that perform specific tasks.


1. Defining and Calling methods

	In ruby methods are defined using the def keyword.

	Basic_method_definition:

		def greeting
			puts "Hi, Surenth"
		end

	Calling_a_method:

		greeting # Output: Hi, Surenth

2. Method Parameters

		Methods can accept required and optional Parameters.

		Required_Parameters:

			def greetings(name)
				puts "Hi #{name}"
			end

			greetings("Surenth") # Output: Hi Surenth

			If you call greetings methods without an argument, ruby will raise an error.

		Optional_Parameters:(with_Default_Values)

			You can provide default values for parameters.

			def greetings(name = "Guest")
				puts "Welcome #{name}"
			end

			greetings # Output: Welcome Guest
			greetings("Vignesh") # Output: Welcome Vignesh

3. Keyword Arguments

		Instead of using positional arguments, you can define methods with named parameters(keyword arguments).

		Basic_Keyword_Arguments:

			def introduce(name:, age:)
				puts "My name is #{name} and I'm #{age} years young."
			end

			introduce(name: "Surenth", age: "31") # Output: My name is Surenth and I'm 31 years young.

		Keyword_Arguments_with_Default_Values:

			def introduce(name: "Vicky", age: 35)
				puts "My name is #{name} and I'm #{age} years young."
			end

			introduce # Output: My name is Vicky and I'm 35 years young.

4. Variable Number of Arguments (*args)

			Use *args to accept multiple arguments

			The *args collects arguments into an array(numbers in this case)

			def sum(*nums)
				nums.sum
			end

			sum(1,10,19) # Output: 30


		Combining Required, Optional, and Variable Arguments

			def info(name, *hobbies, age: 25)
				puts "Name: #{name}"
			  puts "Age: #{age}"
			  puts "Hobbies: #{hobbies.join(', ')}"
			end

			info("Alice", "Reading", "Cycling", age: 30)

			# Output: Name: Alice
			# 				Age: 30
			# 				Hobbies: Reading, Cycling


METHOD_VISIBILITY_IN_RUBY:

	Method visibility is used in ruby to achieve Data Abstraction.

	Access_Modifiers:

			Public Access Modifier
			Private Access Modifier
			Protected Access Modifier


	Public_Access_Modifier:

		class PublicModifier
			def public_method_1
				puts "Public Method 1, Called!!"
			end

			public
			def publicMethod_2
				puts "Public Method 2, Called!!"
			end
		end

		obj = PublicModifier.new()

		obj.public_method_1 # Output: Public Method 1, Called!!
		obj.publicMethod_2  # Output: Public Method 2, Called!!


	Protected_Access_Modifier:

		Protected methods can only be called from the class in which it is declared and the classes it derived from it.


		class Parent

			protected
			def protected_method
				"Protected method called"
			end

		end

		class Child < Parent
			def access_protected
				self.protected_method
				# protected_method
			end
		end

		obj = Child.new
		obj.access_protected # Output: Protected method called

		the protected_method of Parent class is not accessible directly, so it is called from the access_protected of the derived class Child


	Private_Access_Modifier:

		Private methods are called within the class only.
		Private Modifier is the most secure access modifier.


		class PrivateModifier
			def public_method
				private_method_call
			end

			private

			def private_method_call
				"Private method called!!!"
			end
		end

		obj = PrivateModifier.new
		obj.public_method # Output: Private method called!!!

		class ChildClass < PrivateModifier
			def child_method
				self.public_method
			end
		end

		obj = ChildClass.new
		obj.child_method # Output: Private method called!!!



	Combining all access modifiers in one program:

		class Parent

			def public_method_1
				puts "Public method - 1"
			end

			def public_method_2
				private_method
				protected_method
			end

			protected

			def protected_method
				puts "Protected - Called!"
			end

			private

			def private_method
				puts "Private - called!!!"
			end

		end


		class Child < Parent
			def public_method_3
				puts ''
				puts 'Public method 3 called'
				protected_method
				private_method
			end
		end

		parent = Parent.new

		parent.public_method_1 # Output: Public method - 1
		parent.public_method_2
		
			# Output: 
				# Private - called!!!
				# Protected - Called!


		child  = Child.new
		child.public_method_3
		child.public_method_1
		child.public_method_2

			# Output: 
					# Public method 3 called
					# Protected - Called!
					# Private - called!!!




RECURSION_METHODS_IN_RUBY:

	Iterative Code
	Recursive Code
	Benefits and Limitations of Recursion


	Iterative_Code:
		
		def sum_of_numbers(arr_nums)
			sum = 0
			arr_nums.each do |val|
				sum += val
			end
			sum
		end

		sum_of_numbers([1,2,3,4,5]) # Output: 15

	Recursive_Code:

		def recc_sum_of_numbers(arr_nums)
			# Base case: if arr is empty return 0
			return 0 if arr_nums.empty?

			# Recurssive code: Adding each element to the variable by calling the method.
			sum = arr_nums.pop
			return sum + recc_sum_of_numbers(arr_nums)
		end

		recc_sum_of_numbers([5,10,15,20,25,30]) # Output: 105


		Recursive_Factorial:

			def recc_factorial(num)
				return 1 if (0..1).include? num
				num * recc_factorial(num -1)
			end

			recc_factorial(6) # Output: 720








