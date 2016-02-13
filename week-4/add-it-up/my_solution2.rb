# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Chunyu Ou.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers.
# Output: Sum of numbers in array.
# Steps to solve the problem.


# 1. total initial solution
# set placeholder to 0
# set index to 0
# set index smaller than input size

# 3. total refactored solution
def total(arr)
  sum = 0
  index = 0
  while index < arr.size
    sum += arr[index]
    index += 1
  end
  sum
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker(sentence)
  sentence[0] = sentence[0].capitalize
  sentence.join(" ") + "."
end

# 6. sentence_maker refactored solution