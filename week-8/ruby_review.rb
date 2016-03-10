# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#generate Fibonacci numbers in the sequence until the most recent generated number is

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