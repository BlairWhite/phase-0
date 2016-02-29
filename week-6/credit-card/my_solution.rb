# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Theo Paul.
# I spent 2 hours on this challenge.

# Pseudocode

# Input: Credit card number
# Output: True or False
# Steps: Take in credit card number, convert to string, split to array, double every other digit, sum untouched digits, split double-digit doubled numbers and sum them. Sum total. Return true of % 10 = 0, false otherwise.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


class CreditCard
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
  @total = untouched_sum + doubled_sum
  end

  def check_card
    make_array
    if @total % 10 == 0
      true
    elsif @total % 10 != 0
      false
    end
  end
end


# Reflection
#The most difficult part of this challenge for Theo and I was getting the instance variables to change and work in our check-card method. I had to get help to figure out that we needed to include "make_array" in our check card method to include the updated @total.
#I did not learn any new methods here. Perhaps my solution could be refactored to be more concise, but I think my process is easy to follow here and that is why I kept it.
#My understanding of how instance variables are updated was greatly improved on this challenge.