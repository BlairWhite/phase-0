# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

# 3. Refactored Solution
class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError, "Die needs to have at least 1 side"
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end






# 4. Reflection