# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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