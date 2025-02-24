Ruby_Classes_and_Objects:

	1. Defining Classes

		Instance variables (@variable): Belong to a specific object (instance of a class).
		Class variables (@@variable): Shared across all instances of the class.

		class Person
		  @@count = 0 # Class variable

		  def initialize(name, age)
		    @name = name  # Instance variable
		    @age = age
		    @@count += 1
		  end

		  def self.count
		    @@count
		  end
		end

		person = Person.new("Surenth", 31)
		Person.count

	2. Class Methods vs Instance Methods
			
			Instance methods: Work on specific instances of a class.
			Class methods: Belong to the class itself, not instances.

		class Person
		  def instance_method
		    "This is an instance method"
		  end

		  def self.class_method
		    "This is a class method"
		  end
		end

		p1 = Person.new
		puts p1.instance_method  # ✅ Works
		# puts p1.class_method   # ❌ Error: Undefined method
		puts Person.class_method # ✅ Works

	3. Initialize Method
			The initialize method is called when a new instance of a class is created:

			class Person
			  def initialize(name, age)
			    @name = name
			    @age = age
			  end
			end

			p1 = Person.new("Alice", 30)

	4. Accessors (attr_reader, attr_writer, attr_accessor)
			
			Instead of writing explicit getter and setter methods, Ruby provides shortcuts:

			class Person
			  attr_reader :name  # Read-only
			  attr_writer :age   # Write-only
			  attr_accessor :email # Read & Write

			  def initialize(name, age, email)
			    @name = name
			    @age = age
			    @email = email
			  end
			end

			p1 = Person.new("Bob", 25, "bob@example.com")
			puts p1.name  # ✅ Read name
			p1.age = 26   # ✅ Write age
			p1.email = "new@example.com" # ✅ Read & Write email

	5. Inheritance
			A subclass can inherit from a parent class using <:

			class Animal
			  def speak
			    "Some sound"
			  end
			end

			class Dog < Animal
			  def action
			    "Run!"
			  end
			end

			dog = Dog.new
			puts dog.action  # Outputs: Run!

  6. Method Overriding
			
			A subclass can override a method from the parent class:

			class Parent
			  def greet
			    "Hello from Parent"
			  end
			end

			class Child < Parent
			  def greet
			    "Hello from Child"
			  end
			end

			child = Child.new
			puts child.greet  # Outputs: Hello from Child








