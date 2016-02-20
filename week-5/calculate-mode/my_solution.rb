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
def mode(array)
  hash = Hash.new(0)
  array.each do |x|
    if hash.has_key?(x) == true
      hash[x] += 1
    else
      hash[x] = 1
    end
  end
  most = hash.values.max
  hash.select{|k,v| v == most}.keys
end


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