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


def list_deleter(list,item_del)
	list.delete(item_del)
	list
end

#p list_deleter(list,"carrots")

def quantity_changer(list,exist_name,new_quant)
	list[exist_name] = new_quant
	list
end
#p quantity_changer(list,"apples",3)

def list_printer(list)
	list.each{|key,value|puts "I want #{value} of #{key}"}
	list
end
#list_printer(list)
#I am going to refactor this one in order to make the print method run.
list_printer(list_adder(list,"socks",2))

#Reflection
#What did you learn about pseudocode from working on this challenge?
	#I learned pseudocode can be short and simple. I learned that I didn't need to go so in depth on some things and plan it out so 
	# much as put the general idea of what needs to happen to get from point A to point B

#What are the tradeoffs of using arrays and hashes for this challenge?
	#I ended up using a hash for this challenge because it let me call the quantity and the item together. An array would let me just add the items
	#faster to the final list but it wouldn't give me the quantities. Hashes work better.

#What does a method return?
	#The method returns the last item that is called at the end of the method. In the list printer method, it will return list. That is why it can print
	# list later

#What kind of things can you pass into methods as arguments?
	#I can pass anything that has a value assigned to it as long as the method that runs supprots the input.
	#I can put a variable that represents a hash and it uses the hash when that argument is used in the method. That is just an example.


#How can you pass information between methods?
	#I can pass information between methods by setting the methods result as a variable outside of said method. Then that method can be called upon inside another method by putting
	#it in the argument section of the method. An example of this in the code I wrote was list.

#What concepts were solidified in this challenge, and what concepts are still confusing?
	#Using the different methods to access the results of other methods was solidified and pseudocode was clarified. While the concept isn't confusing
	#I still think I need to work on pseudocoding to make it less complicated.