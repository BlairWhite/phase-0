# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: Array of strings.
# Output: One of the strings chosen at random.
# Steps: Initialize, create .sides method to return number of sides, .roll method to return string at random.


# Initial Solution

class Die
  def initialize(labels)
    if labels.length < 1
      raise  ArgumentError, "Cannot work with empty array"
    else
      @labels = labels
    end

  end

  def sides
    labels = @labels
    labels.length
  end

  def roll
    @labels.sample
  end
end


# Reflection
#This challenge was similar to our last die class. The main difference was that we needed to use different methods to deal with strings instead of integers. I used .sample to return a string.
#Writing code that is readable is important because in a situation like this where you need to modify it, it is easy to do if you were thorough with your work the first time.
#I used .sample to return a random item in a list.
#I solidified my understanding of instance variables.