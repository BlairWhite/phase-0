# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
#def separate_comma(x)
 # x = x.to_s.split('')
  #backwards = x.reverse!
  #len = backwards.length
  #i = 0
  #until i = (len-1)
   # if i % 3 == 0
    #  backwards.insert(i,',')
    #end
    #i += 1
  #end
  #forwards = backwards.reverse.join
  #puts forwards
#end

# 2. Refactored Solution
def separate_comma(number)
  howlong = number.to_s.length
  if howlong <= 3
    number.to_s
  else
    arr = number.to_s.split('')
    place = 0
    newarr = Array.new
    arr.reverse_each do |i|
      if place == 3
        newarr.unshift(',')
        place = 0
      end
      newarr.unshift(i)
      place += 1
    end
    answer = newarr.join
    answer
  end
end




# 3. Reflection
#I initially tried various methods to alter the original array, with the goal of using the index number to figure out when to add a comma. After failing many times I changed my approach to create a new array, using unshift to add a comma in the right place.
#My pseudocode was not very effective in this instance because I did not know the .each method didnt allow you to modify the original array within.
#I used .unshift, which was new. I needed this method to make my code work properly. I didnt know it existed initially. I also used reverse_each to iterate through the array backwards.
#I initially tried to flip the array backwards and then iterate through it. I then found reverse_each which helped me to clean up my code.
#yes, my new solution is much more readable because it is much more concise.