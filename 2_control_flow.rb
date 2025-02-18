1. Conditionals
  Ruby uses conditional statements to execute code only when specific conditions are met.

  a. if, else, elsif

    age = 18

    if age < 18
      puts "You are a minor."
    elsif age == 18
      puts "You just became an adult!"
    else
      puts "You are an adult."
    end

  b. unless (opposite of if)

    temperature = 30

    unless temperature > 35
      puts "It's not too hot today."
    end

    Equivalent to:

      if !(temperature > 35)
        puts "It's not too hot today."
      end

  c. ternary
      var = 5
      a = (var > 2) ? true : false

2. LOOPS:

    a. while (executes while condition is true)

        count = 0
        while count <= 5
          puts count
          count += 1
        end

    b. until (executes until condition becomes true)

        count = 0

        until count == 5
          puts count
          count += 1
        end

    c. for (iterates over range)

        for i in 1..5 do
          puts i
        end

        arr = ["one", "two", "three", "four"]
        for val in arr do
          puts val
        end

    d. each (preferred for iterating over collections)

        [1,2,3,4,5].each do |num|
          puts num
        end

3. LOOP_CONTROL_STATEMENTS:

    Loop control statements modify the normal flow of loops.

    a. break (exits the loop immediately)

        for i in 1..10 do
          break if i == 6
          puts i
        end

    b. next (skips the current iteration and moves to the next one)

        for i in 1..10 do
          next if ([2,4,6,8].include? i)
          puts i
        end

    c. redo (repeats the current iteration)
    
        i = 0

        while i <= 5
          puts "Iteration #{i}"
          i += 1
          redo if i == 2
        end

4. CASE_STATEMENTS:
      
    a. Case statement and when statement

        grade = 'B'

        case grade
        when 'A'
          puts "Excellent"
        when 'B'
          puts "Good"
        when 'C'
          puts "Better"
        else
          puts "Invalid grade"
        end

    b. When statement contains range

        marks = 70

        case marks
        when 0..32
          puts "You fail!"
        when 33..40
          puts "You got C grade!"
        when 41..60
          puts "You got B grade!"
        else
         puts  "You got A grade!"
        end

    c. when statement can contain multiple values

        choice = "5"
        case choice
            when "1","2"
                puts "You order Espresso!"
            when "3","4"
                puts "You order Short Macchiato!"
            when "5","6"
                puts "You order Ristretto!"
            when "7","8"
                puts "You order Cappuccino!"
        else
            "No Order!"
        end

    d. case statement without any value.

        str = "Surenth vignesh 7"

        case
          when str.match(/\d/)
            puts "String contains numbers"
          when str.match(/[a-zA-Z]/)
            puts "String contains letters"
        else
          puts 'String does not contain numbers & letters'
        end
       
    e. case statement in method call

        # statement in a method call 
        str = "1234"
          
        # here case statement  
        # has no value & used as  
        # in puts method call 
        puts case 
            when str.match(/\d/)    
              'String contains numbers'
            when str.match(/[a-zA-Z]/) 
              'String contains letters'
        else
            'String does not contain numbers & letters'
        end   


        









