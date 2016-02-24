# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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



# Refactored Solution



# Reflection