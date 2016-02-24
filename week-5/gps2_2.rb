# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split input list into individual item strings
  # convert array of strings to hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash with list items
def create_list(list)
  groceries_list =  list.split(" ")
  groceries_hash = Hash[groceries_list.map {|i| [i, 1]}]
  puts groceries_hash
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: add item to existing list
# output: list with added item
def add_item(hash, new_item, item_quantity)
  hash[new_item] = item_quantity
end


# Method to remove an item from the list
# input: list, item to remove
# steps: remove item from list
# output: list with item removed
def remove_item(list, item_remove)
  list.delete(item_remove)
end

# Method to update the quantity of an item
# input: list, item to update, new quantity
# steps: select item, assign it new quantity
# output: list with updated item quantity
def update_item(list, key, new_quant)
  list[key] =  new_quant
  return list
end

# Method to print a list and make it look pretty
# input: list
# steps: prints string in front of list, makes cursive
# output: pretty list
def pretty(list)
  list = list.map {|k, v| k.capitalize}
  puts "Grocery list:" + list
end

groceries = create_list("lemonade tomatoes onions icecream")
update_item(groceries, "lemonade", 2)
update_item(groceries, "tomatoes", 3)
update_item(groceries, "icecream", 4)
remove_item(groceries, "lemonade")
update_item(groceries, "icecream",  1)
pretty(groceries)