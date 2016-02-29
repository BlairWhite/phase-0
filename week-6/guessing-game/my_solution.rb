# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Initialized with answer. Takes a guess number in .guess method.
# Output:Returns :high, :low, or :correct depending on guess.

# Steps: Initialize, take guess in .guess method, update @solution instance variable, return it in solution method.


# Initial Solution
# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @solution = false
  end
  def guess(guess)
    @guess = guess
    answer = @answer
    guess = @guess
    if guess > answer
      @solution = false
      return :high
    elsif guess == answer
      @solution = true
      return :correct
    elsif guess < answer
      @solution = false
      return :low
    end
  end
    def solved?
      @solution
  end
end


# Reflection
#In this case, the instance variable reflected the guess made by the user. It got updated each time the user put in a new guess.
# Instance variables work throughout a class. They were useful in this case when I needed them to get updated in once class, and returned in another.
#Flow control (if/else) was useful in this situation because depending on what the user inputted, I needed my class to return something different.
#I learned the following about symbols - Symbols are useful because a given symbol name refers to the same object throughout a Ruby program. Symbols are more efficient than strings. Two strings with the same contents are two different objects, but for any given name there is only one Symbol object. This can save both time and memory.