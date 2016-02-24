#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

end


class Greetings

end



# Reflection
#1
# The methods used in release 1 are changing the instance variables.
#These methods take a new variable as an argument, and then assign this new variable to the previously established instance variable.
#2
#There is an attr_reader in release 2, so you can call the .age method instead of having a "what is age method".
#The code is simpler because you don't need a whole method to find out the initial instance variable, you just need an attr_reader.
#3
# This release has an attr_writer that is used to change an instance variable. It replaces an entire method created to do the same thing.
#The output is the same, but it is more simple and requires one less method.
#class NameData
#  def initialize
#    @name = Blair
#  end
#end

#class Greeting
#  def initialize
#    @name = NameData.new
#  end
#  def greet
#    puts "Hello, " + @name + ", welcome!"
#  end
#end
#A reader method can return an instance variable but not modify it.
#A writer method can modify an instance variable but not read it. Accessor can do both.
#Accessor methods let you return or modify instance variables.
#Yes you should use an accessor method because it can do both.
#THese methods seem straightforward.
