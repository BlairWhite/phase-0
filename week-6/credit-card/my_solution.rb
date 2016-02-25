# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


class CreditCard
  @@total = 0
  def initialize(number)
    @number = number
    @total = 0

    if @number.to_s.length != 16
      raise ArgumentError, "Credit Card number needs to have 16 digits."
      else
      @number = @number.to_s
    end
  end

  def make_array
    array = @number.split("")
    array.map! { |i| i.to_i }

    index = 0
    counter = 0
    index1 = 1

    new_array = Array.new
    untouched = Array.new

    while index < 15
      array[index] = array[index] * 2
      index += 2
    end

    while counter < 15
      new_array << array[counter]
      counter += 2
    end

    while index1 < 16
      untouched << array[index1]
      index1 += 2
    end

    doubled_sum  = 0
    new_array.each do |i|
      if i >= 10
        x = i.to_s
        y = x.split("")
        z = y.map! { |i| i.to_i}
        z.each do |a|
          doubled_sum += a
        end
      else
        doubled_sum += i
      end
    end
    untouched_sum = 0
    untouched.each do |i|
      untouched_sum += i
    end

    @@total = untouched_sum + doubled_sum
    @total = untouched_sum + doubled_sum
  end

  def check_card
    if @@total % 10 == 0
      true
    elsif @@total % 10 != 0
      false
    end
  end
end



# Refactored Solution








# Reflection