# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: A working class called Die
# Steps: Initialize the class, and give it size and roll methods.


# 1. Initial Solution

# 3. Refactored Solution
class Die
  def initialize(sides)

    if sides < 1
      raise ArgumentError, "Die needs to have at least 1 side"
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end


# 4. Reflection
#ArgumentErrors are used when an argument is wrong and there isnt a more specific error type. In this case, the argument had to be 1 or greater.
#Creating a class was entirely new to me. The rand() method was also new to me. It was easy to implement.
#A Class is a first-class object. It is an object of the type class, and is assigned to a constant (name of the Class).
#You would use a Ruby class to accomplish a task or to provide you with information.
#instance variables are prefixed by an @ symbol. A local variable is only available inside the method in which it is defined. An instance variable is bound to the specific instance of the class. It is thus available to every method of the object.
#