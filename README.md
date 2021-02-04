# Mechacats 
Mechacats is a mechanical cat model written in Ruby that supports speed and color computations of different cat breeds.
It is tested using Rspec, a ruby testing tool.

# Refactoring Methods Followed for Mechacats

  Refactoring is one of the best coding practices that improve code readability and maintainance. Without refactoring, there are high chances of *code smells* living in the program. Code smells are symptoms that indicate deep problems in the code. 

**Extract Method Refactor Pattern :**
    
  Generally it is considered a code smell when there is a lengthy method. So to minimise the body of the speed method's bombay switch case, I moved the (catnip quanity based speed computation method) code to a separate new method and replaced the old code with a call to the method.

  Often code found in methods *enhance/support resuability*. 

**Refactor Methods :**

  Refactored private methods that returned just constant values to instance variables. In Ruby, instance variables are by default private and can be accessed by the subclasses of the super-classes.

**Design Pattern :**

  Design patterns are customizable blueprints to solve design problems in software design.

* **Strategy Design Pattern :**

    Complex switch cases/if statements indicate incorrect application of object oriented principles. It is considered as an *object orientation abuser*. Additionally, large class becomes a *bloater* (bloated due to heavy long code). 
    
    In case of mechacats, it was handling a lot of switch cases of different cat breeds. This caused code readability issues. Hence I used Strategy Design Pattern, a behavioral design pattern, to mitigate this issue.
    Most switch and if statements (cat types) followed different algorithms. Thus, I inherited cat breeds (types) from Mechacats (super-class) to individual subclasses called strategies.

    Strategy design pattern helps in writing clean code as the conditional-infested codes are avoided. Also, this resulted in the reduction of parameters passed to mechacats class (removed @type).
    
**Multiple .rb files :**

  Since strategy design pattern resulted in the creation of multiple classes, storing them all in one file affected readability and maintainanace. 
  Hence I moved all the subclasses to another .rb file and maintained the super class in the original .rb file.
    
  Multiple .rb files makes it convenient to organize, and work with a team and split work.

**Aspect Oriented Programming :**

  Aspect Oriented Programming is a programming paradigm that sepaartes cross-cutting concerns to improve modularity.
  
  I utilized AOP by passing code blocks through super keyword from subclasses and used Yield to catch the code blocks and execute them. This avoided code duplication/ rewriting code multiple times.

# Rspec

**Additional classes and tests :**
  
  * I added additional 7 test cases in correspondance to new classes(cat breeds) that I created in cats.rb.
  
  * These tests were written to test if every part of the code was able to connect and access the super-class and the necessary methods. 
  
  * The existing code tests for voltage value either > or < 5 but not equal to 5. Hence I have wriiten a test case where voltage equals 5.
  
  * Further I organized the Rspec based speed check and color check by grouping each cat breed. This helps in a quick understanding of what the test results indicate.

# Learning Outcomes

  This coding challenge helped me understand and improve my understanding of refactor and design patterns. Also, I learnt a couple of new code smell types and how to avoid them by writing better, neat and structured code. I enjoyed the elegancy of Ruby!

# HOW TO TEST

  * Install Ruby (any version above 2.0)
  
  * Install bundler using gem install bundler
  
  * In mechacats-refactor directory, use the command bundle install.
  
  To run the tests:

    bundle exec rspec --format documentation mechacats_spec.rb
