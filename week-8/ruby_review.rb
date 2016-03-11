# I worked on this challenge by myself.
# This challenge took me 2 hours.

# Pseudocode
#generate Fibonacci numbers in the sequence until the most recent generated number is larger or equal to original number
#if number is equal, it is fib approved

# Initial Solution

# def is_fibonacci?(num)
#   fib_array = [0, 1]
#   while num > fib_array[-1]
#     fib_array.push(fib_array[-1] + fib_array[-2])
#   end
# return true if num == fib_array[-1]
# return false
# end

# Refactored Solution
def is_fibonacci?(num)
  fib_array = [0, 1]
  while num > fib_array[-1]
    fib_array.push(fib_array[-1] + fib_array[-2])
  end
return true if num == fib_array[-1]
return false
end

#Reflection
#This challenge helped me to brush up on Ruby while loops, arrays, and .push.
#I am very comfortable with Ruby. JS however...
#I am going to do all these Ruby review challenges and go back and do bonus exercises.