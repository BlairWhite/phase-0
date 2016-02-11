def name_yo(first, middle, last)
  puts 'What is your first name?'
  first = gets.chomp
  puts 'What is your middle name?'
  middle = gets.chomp
  puts 'What is your last name?'
  last = gets.chomp
  puts first +  ' ' + middle+ ' ' + last
end
def num_yo(num1)
  puts 'what is your fav number?'
  num1 = gets.chomp.to_i
  num2 = num1 + 1
  puts num2.to_s + " is a better number"
end

To define a local variable, you set it equal to the value of user input with the syntax "localvar = gets.chomp."

To define a method, you begin a new line with "def method_name (variables)."

A local variable is just one part of a method. It is usually a user input that then gets modified by the actual process of the method.

To run a ruby program from the command line, you use the syntax "Ruby Documentname.rb."

To test that code is valid, enter "rspec spec-file-name.rb" from the command line.

To me, Ruby is very intuitive so far. The one thing I am confused about is how to run a Ruby method (a specific one inside of a program) from the command line, or even if it is possible.

https://github.com/BlairWhite/phase-0/blob/master/week-4/mysolution.rb
https://github.com/BlairWhite/phase-0/blob/master/week-4/basic-math.rb