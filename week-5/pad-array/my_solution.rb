# Pad an Array

# I worked on this challenge by myself.

# I spent 1 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#Array, minimum size of array, value to be padding
# What is the output? (i.e. What should the code return?)
#An array of specified length that includes padding if it was previously shorter.
# What are the steps needed to solve the problem?
#Determine if array is smaller than min size
#create loop that adds padding until array is at min size if it was originally smaller
#return array


# 1. Initial Solution
#def pad!(array, min_size, value = nil) #destructive
 # while min_size > array.length
  #  array.push(value)
 # end
 # array
#end

#def pad(array, min_size, value = nil) #non-destructive
  #newarr = Array.new(array)
  #while min_size > newarr.length
   # newarr.push(value)
  #end
 # newarr
#end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  while min_size > array.length
    array.push(value)
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  newarr = Array.new(array)
  while min_size > newarr.length
    newarr.push(value)
  end
  newarr
end


# 4. Reflection
#Yes, this problem was easy to break down into small steps. It initially seemed daunting, but after I decided to use a while loop it became easier to solve.
#I initially was going to try to use an if statement and that was giving me some trouble but after deciding a while loop made more sense, it was easy to complete.
#Yes, I ended up using my initial solution as my refactored solution.
#I had to look up the .push method to get the syntax correct but I have used it before.
#My code is very concise and readable.
#Destructive methods modify the original input. non-destructive methods do not modify original input.