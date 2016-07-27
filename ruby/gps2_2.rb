# GPS 2.2 - Create an Electronic Grocery List

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # "read the items" 
  # set default quantity
  # store the items 
  # print the list to the console "p" visualize without making it nil
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: create a key and assign its value
# output: hash

# Method to remove an item from the list
# input: ask which item?
# steps: used built in delete method to delete the key
# output: hash

# Method to update the quantity of an item
# input: ask which key and update the value
# steps: within the assigned key update value
# output: hash

# Method to print a list and make it look pretty
# input: our wondeful hash
# steps: iterate through the hash
# output: all the key-value pairs.

def create_a_list(list)
  shopping_list = {}
  split_list = list.split(" ")
  split_list.each do |item, value|
  shopping_list[item] = 1
  end
  shopping_list
end
    
def add_update_item(item, quantity, shopping_list)
  shopping_list[item] = quantity
end
  
def remove_item(item, shopping_list)
  shopping_list.delete(item)
end

def update_quantity(item, quantity, shopping_list)
  if error_check(item, quantity, shopping_list)
  shopping_list[item] = quantity
  end
end

def print_list(shopping_list)
  shopping_list.each do |item, value|
    puts "We are buying #{value} #{item}"
  end
end
  
def error_check(item, value, shopping_list)
  shopping_list.key?(item) ? true : false
end

