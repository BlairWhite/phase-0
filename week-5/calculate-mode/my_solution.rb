# Calculate the mode Pairing Challenge

# I worked on this challenge by myself.

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?
#An Array
# What is the output? (i.e. What should the code return?)
#An array that returns the mode or modes.
# What are the steps needed to solve the problem?
#Iterate through array to find mode(s)
#Return array populated with modes.

# 1. Initial Solution
#def mode(array)
  #hash = Hash.new(0)
  #array.each do |x|
    #if hash.has_key?(x) == true
   #   hash[x] += 1
    #else
   #   hash[x] = 1
  #  end
 # end
#end


# 3. Refactored Solution
def mode(array)
  hash = Hash.new(0)
  array.each do |x|
    if hash.has_key?(x) == true
      hash[x] += 1
    else
      hash[x] = 1
    end
  end
  hash.select{|k,v| v == hash.values.max}.keys
end

# 4. Reflection
#I decided to use a hash because counting the number of occurences is perfect for key value pairs.
#Yes, this was easy to break down. I thought about iterating through the original array, putting the array items into a hash, increasing the value for items found more than once, and then returning the items with the greatest occurences.
#I didnt have too tough of a time translating my pseudocode, but I had to refresh my knowledge of hash syntax.
#has_key? was a new method, it was perfect for identifying if a key had occured before in the array. I also had to look up some new ones to return an array from the hash - hash.select, hash.max, and hash.keys/hash.values.