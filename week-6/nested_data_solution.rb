#I worked on this with Greg Toprak
#It took us 1 hour.

# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash [:outer][:inner]["almost"][3]



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |i|
  if i.is_a? Integer
    p i+5
  elsif i.is_a? Array
    i.map! do |elem|
      p elem + 5
    end
  end
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |i|
  if i.is_a? String
    i + "ly"
  else
    i.map! do |j|
      if j.is_a? String
        j + "ly"
      else
        j.map! { |k| k + "ly" }
      end
    end
  end
end

p startup_names

# Reflect
#Nested arrays can be accessed using successive index values. The preceding index value selects the entire array, and then the next index value highlights the individual element within that array.
#To iterate over a nested array, .each works nicely. If you want to iterate into the array within the array, you can use something like
#number_array.map! do |i|
#  if i.is_a? Integer
#    p i
#  elsif i.is_a? Array
#    i.map! do |elem|
#      p elem
#    end
#  end
#end

#I learned a new method for this challenge: .is_a?. This was very useful on this challenge to determine if the element within the array is a simple element (string or integer), or an array which needs to be iterated over. This was my first time using it.