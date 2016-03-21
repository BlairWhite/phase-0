# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# iterate through array
# evaluate each item for divisible by 3,5,15
# push each element into new array, substituting fizz/buzz


# Initial Solution

def super_fizzbuzz(array)
  fizz_buzz_arr = Array.new
  array.each do |num|
    if num % 3 != 0 && num % 5 != 0
      fizz_buzz_arr << num
    elsif num % 15 == 0
      fizz_buzz_arr << "FizzBuzz"
    elsif num % 3 == 0
      fizz_buzz_arr << "Fizz"
    else num % 5 == 0
      fizz_buzz_arr << "Buzz"
    end
  end
return fizz_buzz_arr
end


# Reflection
# What concepts did you review in this challenge?
#I reviewed iterating over arrays, conditional statements, and pushing into new arrays
# What is still confusing to you about Ruby?
#I feel very confident on Ruby
# What are you going to study to get more prepared for Phase 1?
#I play on doing all of the Ruby review exercises.