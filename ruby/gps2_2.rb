# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an hash called shopping_list
  # Turn string of items into an array
  	#input.split (' ')
  #Take input and iterate though it adding each value to the hash as the key
  # set default quantity of 1
  # print the list to the console p shopping_list[can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] A hash


# Method to add an item to a list
# input: item name and optional quantity
# steps:
	# take the item name and add to existing hash as new key
	# take optional quantity and add it as the value to the new key

# output: the existing list with added key and value as the last thing on list.

# Method to remove an item from the list
# input: item name that needs to be removed
# steps:
	# delete the item in the hash that matches the name 

# output: the existing list with removed key and value 

# Method to update the quantity of an item
# input: item name and the new quantity of item
# steps: 
	#in existing list call for specific item name and input new quantity overiding the old one
# output: exisiting list with the value of the desired item changed

# Method to print a list and make it look pretty
# input: a statement to print the hash
# steps: 
	#iterate through the program and run a print statement for the hash calling the key and value and putting it into a string

# output: existing list in readable form saying how many of each item to get


def list_creation(items_string)
	shopping_list = {}
	intit_list = items_string.split(' ')
	intit_list.each do|item|
		shopping_list[item] = 1
	end
	shopping_list
end

list = list_creation("cereal pizza apples carrots")

def list_adder(list,newitem,quantity)
	list[newitem] = quantity
	list
end

p list_adder(list,"socks",2)