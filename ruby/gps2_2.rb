# GPS 2.2 - Create an Electronic Grocery List

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # "read the items" 
  # set default quantity
  # store the items 
  # print the list to the console "p" visualize without making it nil
# output: [hash]

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
# output:hash

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
    
def add_item(item, shopping_list)
  shopping_list[item] = 1
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

#Driver Code
list = []
shopping_list = create_a_list( "Lemonade Tomatoes Onions Ice-Cream")

update_quantity("Lemonade", 2, shopping_list)
update_quantity("Tomatoes", 3, shopping_list)
update_quantity("Onions", 1, shopping_list)
update_quantity("Ice-Cream", 4, shopping_list)

remove_item("Lemonade", shopping_list)

update_quantity("Ice-Cream", 1, shopping_list)

print_list(shopping_list)

# update_quantity("No-cream", 2, shopping_list)





# Release 5: Reflect

# What did you learn about pseudocode from working on this challenge?
# Pseudocode is important because it helps to shape your thought process logically. 
# Making sure that you add details that are clear and specific.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Arrays are easier to manipulate and the rigid order, allows us to retrieve items using indexes.
# In this challege, storing the information as a hash was clearly superior, 
# because we had both grocery item and quantity..
# This challenge and pairing helped to consolidate creating, adding, 
# updating, and deleting keys in the hash.


# What does a method return?
# An argument is passed through the method specified by the parameters to modify or return
# a certain result. Ruby has an implicit return of the last item passed.


# What kind of things can you pass into methods as arguments?
# Integers, strings, arrays, hashes, basically any of our variables.

# How can you pass information between methods?
# To pass information between methods, the information has to be returned in the method and
# called outside the method as a local variable.


# What concepts were solidified in this challenge, and what concepts are still confusing?
# I have a better understanding of hashes now and how manipulate a hash. 
# Figuring our the scope of variables and whether or not a method 
# returns the desired value is still challenging.


