A. Basic Syntax and Data Types
		
		1. Variables in Ruby

				Ruby is a dynamically typed language, 
				Dont need to specify the type of the variable when you declare it.
				The type is inferred at runtime.

				a. LOCAL_VARIABLE:
						Accessible only within the scope when they are declared.
						Syntax: Starts with lowercase or an underscore
						Example:

						test_var = 10, Output: test_var is the local variable and it returs 10
						_value = "return val", Output: _value is the local variable and it returs "return val"

				b. GLOBAL_VARIABLE:
						Accessible from anywhere in your ruby program.
						Syntax: Begins with a $ symbol.
						Example:

							class TestVariable
								$global_var = "I'm global variable"

								def method_one
									return $global_var
								end
							end

							TestVariable.new.method_one

				c. INSTANCE_VARIABLE:
						Instance variables belongs to an object and each object has its own copy of its instance variables.
						Syntax: Starts with @ symbol
						Example:

							class Person
								def initialize(name)
									@name = name
								end

								def greetings
									return "Hello #{@name}"
								end
							end

							new_person = Person.new("Surenth Vignesh") # object initialization
							new_person.greetings

							Output: "Hello Surenth Vignesh"

				d. CLASS_VARIABLES:
						Class variables are shares across all instances of a class.
						Syntax: Starts with @@ symbol
						Example: 

							class Person
								@@count = 0

								def initialize(name)
									@name = name
									@@count += 1
								end

								def self.count
									@@count
								end

								def greetings
									"Hello #{@name} and your count value is #{@@count}"
								end
							end

							new_person = Person.new("Surenth Vignesh")
							Person.new("Ajay")
							Person.new("Vicky")

							Person.count # Output: 3
							new_person.greetings # Output: Hello Surenth Vignesh and your count value is 3


		2. Ruby Data Types
			
				a. NUMBERS:
						Ruby supports integers and floats.

						Integers: Whole numbers
							Example: 
								x = 10, y = -2, z = 0

						Floats: Decimal numbers
							Example: 
								pi = 3.14159
								temp = 98.6

						Ruby also supports arbitrary-precision integers and floats 
						(no need for specific data types like int or double)

				b. STRINGS:
						Strings in Ruby are used to represent text. 
						Enclosed in either single or double quotes.

						Single_quoted_string: No interpolation or escape sequences.
							Example:
								text = 'String 1 value' # output: String 1 value

						Double_quoted_string: Supports interpolation and escape sequences.
							Example: 
								val = 2
								text = "This is String #{val} result" # output: This is String 2 result

				c. SYMBOLS:
						Symbols are immutable, unique identifiers. 
						Used for things like key in hashes or method_names.
						More efficient. Ofter preferred over strings.

						Syntax: :symbol_name
						Example:
							:name, :age, :date

				d. ARRAYS:
						Arrays are ordered collection of an object. 
						Can store any type of value inside an array.

						Syntax: Elements are enclosed in Square brackets [].
						Example:

							fruits = ["apple", "bananna", "cherry"]
							numbers = [12, 3, 5]
							mixed = ["What", 1.3, 0, -3, 5, 4.5, 3]

						You can access elements by using their index (Strating at 0)
							fruits[2] 	# Cherry
							numbers[1] 	# 3
							mixed[5] 		# 4.5

					e. HASHES:
							Hashes are collections of key-value pairs (Similar to dictionaries or maps in other languages).
							Keys can be an object but symbols are commonly used.

							Syntax: Key-value pairs enclosed in curly braces {}.
							Example:
								person = {name: "Alice", age: 30, occupation: "Engineer"}

							You can access values using their keys.

								person[:name] # Output: Alice
								person[:age]  # Output: 30

					f. BOOLEANS:
							Booleans are used for conditional statements and represent truth values.
							Values: true and false
							Example:
								x = true
								y = false

		3. Operators in Ruby

				a. Arithmetic Operators
						Used for mathematical operations:
						+ (addition)
						- (subtraction)
						* (multiplication)
						/ (division)
						% (modulo)
						** (exponentiation)

						Example:
							a = 10
							b = 5
							puts a + b  # 15
							puts a - b  # 5
							puts a * b  # 50
							puts a / b  # 2
							puts a % b  # 0
							puts a ** b # 100000

				b. Comparison Operators
						Used for comparing values:

						== (equal to)
						!= (not equal to)
						< (less than)
						> (greater than)
						<= (less than or equal to)
						>= (greater than or equal to)

						Example: 
							a = 10
							b = 5
							puts a == b  # false
							puts a != b  # true
							puts a > b   # true
							puts a < b   # false

				c. Logical Operators
						Used to combine boolean expressions:

						&& (AND)
						|| (OR)
						! (NOT)

						Example:
							x = true
							y = false
							puts x && y  # false
							puts x || y  # true
							puts !x      # false

				d. Assignment Operators
						Used for assigning values to variables:

						= (basic assignment)
						+= (addition assignment)
						-= (subtraction assignment)
						*= (multiplication assignment)
						/= (division assignment)
		
						Example:
							x = 5
							x += 3  # x = x + 3, so x = 8
							x -= 2  # x = x - 2, so x = 6	


