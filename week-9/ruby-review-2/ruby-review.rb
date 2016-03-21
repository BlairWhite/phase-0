
# U2.W6: Testing Assert Statements

# I worked on this challenge by myself. I was unable to find a partner.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#When you call the assert method, it checks if a block of code 'yields', and raises "Assertion failed!" if it does not. In this case, it is checking if the variable 'name' is correct.


# 3. Copy your selected challenge here
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

# p separate_comma(2345858)
# p separate_comma(1000)
# p separate_comma(444)
# p separate_comma(438573875398)

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

assert { separate_comma(2345858) == "2,345,858" }
assert { separate_comma(1000) == "1,000" }
assert { separate_comma(444) == "444" }



# 5. Reflection
# What concepts did you review in this challenge?
# I learned a lot about testing and assert statements were totally new to me.
# What is still confusing to you about Ruby?
# I am not sure that I am getting the most out of my assert statements. I think there are more nuances that I am not yet aware of.
# What are you going to study to get more prepared for Phase 1?
# I am going to review more testing methods.