# Your Names
# 1)Blair White
# 2)Afaan Naqvi

# We spent 2 hours on this challenge.

# Bakery Serving Size portion calculator._to_make
def is_it_bakable(item_to_make, library)
  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
end

def suggested_bake(remaining_ingredients, num_of_ingredients, ingredients_needed, item_to_make)
  return "Calculations complete: Make #{num_of_ingredients / ingredients_needed} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You should bake #{remaining_ingredients} cookies."
end


def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  is_it_bakable(item_to_make, library)
  ingredients_needed = library[item_to_make]
  remaining_ingredients = num_of_ingredients % ingredients_needed

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / ingredients_needed} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients."
  else
    suggested_bake(remaining_ingredients, num_of_ingredients, ingredients_needed, item_to_make)
  end
end

#  defined a method with 2 arguments
  # Created a hash "library" with foods and ingredient counts
# check item_to_make against library hash keys and raise an argument if key is not found

  # Iterating through the library hash
  # If item-ingredient-count is not equal to the order ingredient-counts
  # Subtracts 1 from counter
#
  # Pull sin error counter variable
  # If anyu errors (if counter is greater than 0) raise an error



  # COmpare number of ingredients against value of food in library and store remainder of % in remainder variable
  # Check the value of the food at the "item_to_make" position
  # This returns an array, anf the [0] returns the first (and only) element of that array
  # Calculate remaining ingredients which is the remainder of the number of ingredients and the serving size

# Conditional statements on remaining_ingredients variable
# WHEN 0 => Return a string stating that
# WHEN not 0 => Return a string telling you how much of the item can be made, and how many remaining ingredients there will be



p serving_size_calc("pie", 7) #== "Calculations complete: Make 1 of pie, you have 0 leftover ingredients."
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7) #== "Calculations complete: Make 1 of cake, you have 2 leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
p serving_size_calc("cookie", 1)
"good" if p serving_size_calc("cookie", 10) #== "Calculations complete: Make 10 of cookie, you have 0 leftover ingredients."
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection